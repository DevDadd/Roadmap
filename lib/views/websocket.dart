import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class Websocket extends StatefulWidget {
  const Websocket({super.key});

  @override
  State<Websocket> createState() => _WebsocketState();
}

class _WebsocketState extends State<Websocket> {
  final channel = WebSocketChannel.connect(Uri.parse('wss://echo.websocket.events'));
  final TextEditingController inputController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    channel.sink.close();
    inputController.dispose();
  }
  void sendMessange(){
    if(inputController.text.isNotEmpty){
      channel.sink.add(inputController.text);
      inputController.clear();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StreamBuilder(stream: channel.stream, builder: (context,snapshot){
            if(snapshot.hasError){
              return Text("Error");
            } else if(snapshot.hasData){
              return Text("Recieved Data");
            }
            return Text("Waiting");
          }),
               Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: inputController,
                    decoration: const InputDecoration(labelText: "Send message"),
                    onSubmitted: (_) => sendMessange(),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: sendMessange,
                )
              ],
            ),
        ],
      ),
    );
  }
}