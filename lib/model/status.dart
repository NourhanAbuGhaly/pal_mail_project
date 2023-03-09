// class StatusData {
//   List<Statuses>? statuses;
//
//   StatusData({this.statuses});
//
//   StatusData.fromJson(Map<String, dynamic> json) {
//     if (json['statuses'] != null) {
//       statuses = <Statuses>[];
//       json['statuses'].forEach((v) {
//         statuses!.add(Statuses.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (statuses != null) {
//       data['statuses'] = statuses!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

class Statuses {
  int? id;
  String? name;
  String? color;
  String? createdAt;
  String? updatedAt;
  String? mailsCount;

  Statuses(
      {this.id,
      this.name,
      this.color,
      this.createdAt,
      this.updatedAt,
      this.mailsCount});

  Statuses.fromJson(Map<String, dynamic> json) {
    id = json['statuses']['id'];
    name = json['statuses']['name'];
    color = json['statuses']['color'];
    createdAt = json['statuses']['created_at'];
    updatedAt = json['statuses']['updated_at'];
    mailsCount = json['statuses']['mails_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['color'] = color;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['mails_count'] = mailsCount;
    return data;
  }
}
