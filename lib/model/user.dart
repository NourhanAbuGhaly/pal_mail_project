import 'package:pal_mail_project/model/role.dart';

class User {
  int? id;
  String? name;
  String? email;
  String? image;
  String? emailVerifiedAt;
  String? roleId;
  String? token;
  String? createdAt;
  String? updatedAt;
  Role? role;

  User(
      {this.id,
      this.name,
      this.email,
      this.image,
      this.emailVerifiedAt,
      this.roleId,
      this.token,
      this.createdAt,
      this.updatedAt,
      this.role});

  User.fromJson(Map<String, dynamic> json) {
    id = json['user']['id'];
    name = json['user']['name'];
    email = json['user']['email'];
    image = json["user"]['image']??" ";
    emailVerifiedAt = json["user"]['email_verified_at'];
    roleId = json["user"]['role_id'];
    token = json["token"];
    createdAt = json["user"]['created_at'];
    updatedAt = json["user"]['updated_at'];
    role = Role.fromJson(json["user"]["role"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['image'] = image;
    data['email_verified_at'] = emailVerifiedAt;
    data['role_id'] = roleId;
    data["token"] = token;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (role != null) {
      data['role'] = role!.toJson();
    }
    return data;
  }
}
//
// class Role {
//   late int id;
//   late String name;
//   late String createdAt;
//   late String updatedAt;
//
//   Role.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }
