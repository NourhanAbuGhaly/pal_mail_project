class Attachement{
 int? id ;
 String? title;
 String? image;
 String? mail_id;
 DateTime? created_at;
 DateTime? updated_at;

 Attachement({
   this.id,
   this.title,
   this.image,
   this.mail_id,
   this.created_at,
   this.updated_at
});
 Attachement.fromJson(Map<String, dynamic> json) {
   id = json["attachment"]["id"];
   title = json["attachment"]["title"];
   mail_id = json["attachment"]["mail_id"];
  image=json["attachment"]["image"]?? Null;
   created_at = DateTime.tryParse(json["attachment"]["created_at"]);
   updated_at = DateTime.tryParse(json["attachment"]["updated_at"]);
 }
 Map<String, dynamic> toJson() {
   final Map<String, dynamic> data = Map<String, dynamic>();
   data['id'] = id;
   data['title'] = title;
   data['mail_id'] = mail_id;

   data["image"] = image;
   data['created_at'] = created_at;
   data['updated_at'] = updated_at;

   return data;
 }
}
