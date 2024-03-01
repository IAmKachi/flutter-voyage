// Exercise 2

class User {
  final String name;
  final int id;

  const User({
    required this.name,
    required this.id,
  });

  // helper function to convert a User to a map
  Map<String, String> toMap() {
    var userMap = <String, String>{};

    userMap['id'] = id.toString();
    userMap['name'] = name;

    return userMap;
  }
}

// function to convert user list to a list of maps
List<Map<String, String>> convert(List<User> users) {
  var userMapList = users.map((user) => user.toMap()).toList();
  return userMapList;
}

// test
void main() {
  var user1 = User(name: 'Titi', id: 67);
  var user2 = User(name: 'Emeka', id: 83);
  var user3 = User(name: 'Bako', id: 34);

  var userList = [user1, user2, user3];

  var userMaps = convert(userList);
  print(userMaps);
}
