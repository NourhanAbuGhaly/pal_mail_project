class Activites{
int? id ;
String? body;
String? user_id;
String ? mail_id;
String? send_number;
String? send_date;
String? send_destination;
DateTime? created_at;
DateTime? updated_at;
Activites({
  this.id,
  this.body,
  this.user_id,
  this.mail_id,
  this.send_number,
  this.send_date,
  this.send_destination,
  this.created_at,
  this.updated_at
});
Activites.fromJson(Map<String, dynamic> json) {
  id = json["activities"]["id"];
  body = json["activities"]["body"];
  user_id = json["activities"]["user_id"];
  mail_id = json["activities"]["mail_id"];
  send_number = json["activities"]["send_number"]?? Null;
  send_date = json["activities"]["send_date"]?? Null;
  send_destination = json["activities"]["send_destination"]?? Null;
  created_at = DateTime.tryParse(json["activities"]["created_at"]);
  updated_at = DateTime.tryParse(json["activities"]["updated_at"]);
}
Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = Map<String, dynamic>();
  data['id'] = id;
  data['body'] = body;
  data['user_id'] = user_id;
  data['mail_id'] = mail_id;
  data['send_number'] = send_number;
  data['send_date'] = send_date;
  data["send_destination"] = send_destination;
  data['created_at'] = created_at;
  data['updated_at'] = updated_at;

  return data;
}


}

