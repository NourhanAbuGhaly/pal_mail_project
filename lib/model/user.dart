class UserData {
  late User user;
  late String token;

  UserData();

  UserData.fromJson(Map<String, dynamic> json) {
    user = User.fromJson(json["user"]);
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

// class UserData {
//   final User user;
//   final String token;
//
//   UserData({required this.user, required this.token});
//
//   factory UserData.fromJSON(Map<String, dynamic> json) {
//     return UserData(token: json["token"], user: json["user"]);
//   }
// }

class User {
  late int id;
  late String name;
  late String email;
  late Null image;
  late String emailVerifiedAt;
  late String roleId;
  late String createdAt;
  late String updatedAt;
  late Role role;
  late String password;
  late String Conpassword;
  User();
  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['user']['name'];
    email = json['user']['email'];
    image = json['image'];
    emailVerifiedAt = json['email_verified_at'];
    roleId = json['role_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    role = Role.fromJson(json["role"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['image'] = this.image;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['role_id'] = this.roleId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.role != null) {
      data['role'] = this.role.toJson();
    }
    return data;
  }
}
//
// class User {
//   late final int id;
//   late final String name;
//   late final String email;
//   late final Null image;
//   late final String emailVerifiedAt;
//   late final String roleId;
//   late final String createdAt;
//   late final String updatedAt;
//   late final Role role;
//
//   late final String password;
//   late final String Conpassword;
//
//   User({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.image,
//     required this.emailVerifiedAt,
//     required this.roleId,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.role});
//
//   factory User.fromJSON(Map<String, dynamic> json) {
//     return User(
//       id: json['id'],
//       name: json['user']['name'],
//       email: json['user']['email'],
//       image: json['image'],
//       emailVerifiedAt: json['email_verified_at'],
//       roleId: json['role_id'],
//       createdAt: json['created_at'],
//       updatedAt: json['updated_at'],
//       role: Role.fromJson(json["role"]),

//     );
//   }
// }

class Role {
  late int id;
  late String name;
  late String createdAt;
  late String updatedAt;

  Role.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
//
// class Role {
//   final int id;
//   final String name;
//   final String createdAt;
//   final String updatedAt;
//
//   Role({required this.id,
//     required this.name,
//     required this.createdAt,
//     required this.updatedAt});
//
//   factory Role.fromJson(Map<String, dynamic> json) {
//     return Role(
//         id: json['id'],
//         name: json['name'],
//         createdAt: json["created_at"],
//         updatedAt: json["updated_at"]);
//   }
// }
