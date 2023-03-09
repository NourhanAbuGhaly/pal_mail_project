import 'package:pal_mail_project/model/categories.dart';

class Sender {
  int? id;
  String? name;
  String? mobile;
  String? address;
  String? category_id;
  DateTime? created_at;
  DateTime? update_at;
  List<Categories>? category;

  Sender(
      {this.id,
      this.name,
      this.mobile,
      this.address,
      this.category_id,
      this.created_at,
      this.update_at,
      this.category});

  Sender.fromJson(Map<String, dynamic> json) {
    id = json['sender']["id"];
    name = json["sender"]["name"];
    mobile = json["sender"]["mobile"];
    address = json["sender"]["address"];
    category_id = json["sender"]["category_id"];
    created_at = DateTime.tryParse(json["sender"]["created_at"]);
    update_at = DateTime.tryParse(json["sender"]["update_at"]);
    category = json["sender"]["category"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;

    data["name"] = name;
    data["mobile"] = mobile;
    data["address"] = address;
    data["category_id"] = category_id;
    data["created_at"] = created_at;
    data["update_at"] = update_at;
    data["category"] = category;

    return data;
  }
}
