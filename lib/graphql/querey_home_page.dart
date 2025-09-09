import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:test2/graphql/graphql.dart';

class QuereyHomePage extends StatelessWidget {
  QuereyHomePage({super.key});
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Users')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(  
          children: [
            Expanded(
              child: Query(
                options: QueryOptions(document: gql(getUsersQuery)),
                builder: (QueryResult result, {refetch, fetchMore}) {
                  if (result.isLoading) return Center(child: CircularProgressIndicator());
                  if (result.hasException) return Text(result.exception.toString());

                  final users = result.data?['users'] ?? [];
                  return ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      return ListTile(
                        title: Text(user['name']),
                        subtitle: Text('ID: ${user['id']}'),
                      );
                    },
                  );
                },
              ),
            ),
            Mutation(
              options: MutationOptions(document: gql(addUserMutation)),
              builder: (RunMutation runMutation, QueryResult? result) {
                return Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(hintText: 'Enter new user name'),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_nameController.text.isNotEmpty) {
                          runMutation({'name': _nameController.text});
                          _nameController.clear();
                        }
                      },
                      child: Text('Add'),
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
