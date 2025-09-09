const String getUsersQuery = """
  query {
    users {
      id
      name
    }
  }
""";

const String addUserMutation = """
  mutation AddUser(\$name: String!) {
    createUser(input: {name: \$name}) {
      id
      name
    }
  }
""";
