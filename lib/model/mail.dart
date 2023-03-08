// class MailData {
//   String? message;
//   Mail? mail;
//
//   MailData({this.message, this.mail});
//
//   MailData.fromJson(Map<String, dynamic> json) {
//     message = json['message'];
//     mail = json['mail'] != null ? Mail.fromJson(json['mail']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['message'] = message;
//     if (mail != null) {
//       data['mail'] = mail!.toJson();
//     }
//     return data;
//   }
// }
//
// class Mail {
//   int? id;
//   String? subject;
//   Null? description;
//   String? senderId;
//   String? archiveNumber;
//   String? archiveDate;
//   Null? decision;
//   String? statusId;
//   Null? finalDecision;
//   String? createdAt;
//   String? updatedAt;
//
//   Mail(
//       {this.id,
//       this.subject,
//       this.description,
//       this.senderId,
//       this.archiveNumber,
//       this.archiveDate,
//       this.decision,
//       this.statusId,
//       this.finalDecision,
//       this.createdAt,
//       this.updatedAt});
//
//   Mail.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     subject = json['subject'];
//     description = json['description'];
//     senderId = json['sender_id'];
//     archiveNumber = json['archive_number'];
//     archiveDate = json['archive_date'];
//     decision = json['decision'];
//     statusId = json['status_id'];
//     finalDecision = json['final_decision'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['id'] = id;
//     data['subject'] = subject;
//     data['description'] = description;
//     data['sender_id'] = senderId;
//     data['archive_number'] = archiveNumber;
//     data['archive_date'] = archiveDate;
//     data['decision'] = decision;
//     data['status_id'] = statusId;
//     data['final_decision'] = finalDecision;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     return data;
//   }
// }

import 'package:pal_mail_project/model/activites.dart';
import 'package:pal_mail_project/model/attachement.dart';
import 'package:pal_mail_project/model/sender.dart';
import 'package:pal_mail_project/model/tage.dart';
import 'package:pal_mail_project/screens/serach_filter.dart';

class Mail {
  int? id;
  String? subject;
  String? description;
  String? senderId;
  String? archiveNumber;
  String? archiveDate;
  String? decision;
  int? statusId;
  String? finalDecision;
  DateTime? createdAt;
  DateTime? updatedAt;
  Sender? sender;
  Status? status;
  List<Tag>? tags;
  List<Attachement>? attachments;
  List<Activites>? activities;

  Mail({
    this.id,
    this.subject,
    this.description,
    this.senderId,
    this.archiveNumber,
    this.archiveDate,
    this.decision,
    this.statusId,
    this.finalDecision,
    this.createdAt,
    this.updatedAt,
    this.sender,
    this.status,
    this.tags,
    this.attachments,
    this.activities,
  });

  Mail.fromJson(Map<String, dynamic> json) {
    //id=json["data"][0]["id"];
    id = json["id"];
    subject = json["subject"];
    description = json["description"];
    senderId = json["sender_id"];
    archiveNumber = json["archive_number"];
    archiveDate = json["archive_date"];
    description = json["description"];
    statusId = json["status_id"];
    finalDecision = json["final_decision"];
    createdAt = json["created_at"];
    updatedAt = json["update_at"];
    sender = json["sender"];
    status = json["status"];
    tags = json["tage"];
    attachments = json["attachments"];
    activities = json["activities"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["subject"] = subject;
    data["description"] = description;
    data["sender_id"] = senderId;
    data["archive_number"] = archiveNumber;
    data["archive_date"] = archiveDate;
    data["description"] = description;
    data["status_id"] = statusId;
    data["final_decision"] = finalDecision;
    data["created_at"] = createdAt;
    data["update_at"] = updatedAt;
    data["sender"] = sender;
    data["status"] = status;
    data["tags"] = tags;
    data["attachments"] = attachments;
    data["activities"] = activities;

    return data;
  }
}
