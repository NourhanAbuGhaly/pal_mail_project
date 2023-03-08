class TagsData {
  List<Tags>? tags;

  TagsData({this.tags});

  TagsData.fromJson(Map<String, dynamic> json) {
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(Tags.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (tags != null) {
      data['tags'] = tags!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tags {
  int? id;
  String? name;
  String? createdAt;
  String? updatedAt;
   List? pivot;

  Tags({this.id, this.name, this.createdAt, this.updatedAt,this.pivot});

  Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot=json["pivot"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['pivot']=pivot;
    return data;
  }
}
class Pivot{
  String? mail_id;
  String? tag_id;
  Pivot.fromJson(Map<String, dynamic> json) {
    mail_id=json["mail_id"];
    tag_id=json["tag_id"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
  data["mail_id"]=mail_id;
    data["tag_id"]=tag_id;

  return data;
  }



}
