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
import 'package:pal_mail_project/model/tags.dart';
import 'package:pal_mail_project/screens/serach_filter.dart';

class Mail {
  int? id;
  String? subject;
  String? description;
  String? sender_id;
  String? archive_number;
  String? archive_date;
  String? decision;
  String? status_id;
  String? final_decision;
  String? created_at;
  String? update_at;
  List<Sender>? sender;
  List<Status>? status;
  List<Tags>? tage;
  List<Attachement>? attachement;
  List<Activites>? activites;

  Mail(
      {this.id,
      this.subject,
      this.description,
      this.sender_id,
      this.archive_number,
        this.archive_date,
      this.decision,
      this.status_id,
      this.final_decision,
      this.created_at,
      this.update_at,
      this.sender,
      this.status,
      this.tage,
      this.attachement,
      this.activites});

  Mail.fromJson(Map<String, dynamic> json) {
    //id=json["data"][0]["id"];
    id = json["id"];
    subject = json["subject"];
    description = json["description"];
    sender_id = json["sender_id"];
    archive_number = json["archive_number"];
    archive_date=json["archive_date"];
    description = json["description"];
    status_id = json["status_id"];
    final_decision = json["final_decision"];
    created_at = json["created_at"];
    update_at = json["update_at"];
    sender = json["sender"];
    status = json["status"];
    tage = json["tage"];
    attachement = json["attachement"];
    activites = json["activites"];
  }



  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["subject"] = subject;
    data["description"] = description;
    data["sender_id"] = sender_id;
    data["archive_number"] = archive_number;
    data["archive_date"]=archive_date;
    data["description"] = description;
    data["status_id"] = status_id;
    data["final_decision"] = final_decision;
    data["created_at"] = created_at;
    data["update_at"] = update_at;
    data["sender"] = sender;
    data["status"] = status;
    data["tage"] = tage;
    data["attachement"] = attachement;
    data["activites"] = activites;

    return data;
  }
}
