enum UserRole { Admin, User, Guest }

class User {
  void getPermissions() {}
}

class Admin extends User {
  @override
  void getPermissions() => print("All access");
}