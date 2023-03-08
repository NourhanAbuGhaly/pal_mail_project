import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pal_mail_project/api/api_setting.dart';
import 'package:pal_mail_project/model/api_response.dart';
import '../../model/sender.dart';

class SenderApiController {
  static Future<ApiResponse> createSender({required Sender sender}) async {
    ApiResponse apiResponse = ApiResponse();
    final http.Response response =
        await http.post(Uri.parse(sendersURL), headers: {
      "Accept": "application/json"
    }, body: {
      "subject": sender.id,
      "description": sender.name,
      "sender_id": sender.mobile,
      "archive_number": sender.address,
      "archive_date": sender.category_id,
      "decision": sender.cretaed_at,
      "update_at": sender.update_at,
      "category": sender.category,
    });
    apiResponse.data = Sender.fromJson(jsonDecode(response.body));
    return apiResponse;
  }
}
