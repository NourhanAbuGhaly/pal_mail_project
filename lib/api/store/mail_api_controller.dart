import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:pal_mail_project/api/api_setting.dart';
import 'package:pal_mail_project/model/api_response.dart';
import 'package:pal_mail_project/model/mail.dart';

import '../../utils/prefs.dart';

class MailApiService {
  static Future<ApiResponse> createMail({required Mail mail}) async {
    ApiResponse apiResponse = ApiResponse();
    final http.Response response =
        await http.post(Uri.parse(mailsURL), headers: {
      "Accept": "application/json"
    }, body: {
      "subject": mail.subject,
      "description": mail.description,
      "sender_id": mail.senderId,
      "archive_number": mail.archiveNumber,
      "archive_date": mail.archiveDate,
      "decision": mail.decision,
      "status_id": mail.statusId,
      "final_decision": mail.finalDecision,
      "tags": mail.tags,
      "activities": mail.activities
      //   "activities":jsonEncode({},{});
      //   "tags":mail.tage,
    });
    apiResponse.data = Mail.fromJson(jsonDecode(response.body));
    return apiResponse;
  }

  static Future<List<Mail>> getAllMails() async {
    //business logic to send data to server

    print('token :: ${SharedPrefController().getValueFor('token')}');
    String token = '465|9qurxAqXisIuRCtbGpQdjIsRpzzuDW6pDRpb9f1g';

    final http.Response response = await http.get(
        Uri.parse(
          mailsURL,
        ),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        });

    // print('status code : ${response.statusCode}');
    // print('response: : ${response.body}');
    String mail = response.body;
    Map<String, dynamic> json = jsonDecode(response.body);
    // List<dynamic> mailList = json['mails'];
    //
    // print('mailList ==== $mailList');
    // List<Mail> mails =
    //     mailList.map((mailJson) => Mail.fromJson(mailJson)).toList();
    Mail mails = Mail.fromJson(json);
    List<Mail> mailList = [];
    mailList.add(mails);
    print('mails-========== $mails');
    print('mails-========== $mailList');

    return mailList;
    // List<dynamic> list = Mail.fromJson(json) as List;
    print('Json === $json');
    print('mail subject  === ${json['subject']}');

    // if (response.statusCode == 200) {
    //print(  response.body);
    //parse json into list of objects
    // final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
    // return parsed.map<Mail>((item) => Mail.fromJson(item)).toList();
    // }
    // else {
    //   //print('Error');
    //   throw Exception("Can't load author");
    // }
  }

  static Future<ApiResponse> getAll() async {
    ApiResponse apiResponse = ApiResponse();
    final http.Response response = await http.get(
      Uri.parse('$mailsURL'),
      headers: {"Accept": "application/json"},
    );
    Mail mail = Mail.fromJson(jsonDecode(response.body));
    print('response.body :::: ${response.body}');
    print('mail.subject ==== ${mail.subject}');
    return apiResponse;
  }
}
