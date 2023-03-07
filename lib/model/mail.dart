class MailData {
  String? message;
  Mail? mail;

  MailData({this.message, this.mail});

  MailData.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    mail = json['mail'] != null ? Mail.fromJson(json['mail']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (mail != null) {
      data['mail'] = mail!.toJson();
    }
    return data;
  }
}

class Mail {
  int? id;
  String? subject;
  Null? description;
  String? senderId;
  String? archiveNumber;
  String? archiveDate;
  Null? decision;
  String? statusId;
  Null? finalDecision;
  String? createdAt;
  String? updatedAt;

  Mail(
      {this.id,
      this.subject,
      this.description,
      this.senderId,
      this.archiveNumber,
      this.archiveDate,
      this.decision,
      this.statusId,
      this.finalDecision,
      this.createdAt,
      this.updatedAt});

  Mail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subject = json['subject'];
    description = json['description'];
    senderId = json['sender_id'];
    archiveNumber = json['archive_number'];
    archiveDate = json['archive_date'];
    decision = json['decision'];
    statusId = json['status_id'];
    finalDecision = json['final_decision'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['subject'] = subject;
    data['description'] = description;
    data['sender_id'] = senderId;
    data['archive_number'] = archiveNumber;
    data['archive_date'] = archiveDate;
    data['decision'] = decision;
    data['status_id'] = statusId;
    data['final_decision'] = finalDecision;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
