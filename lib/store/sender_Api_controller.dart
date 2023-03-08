import 'dart:convert';

import 'package:pal_mail_project/api/api_setting.dart';
import 'package:pal_mail_project/model/api_response.dart';
import 'package:http/http.dart'as http;
import 'package:pal_mail_project/model/sender.dart';
class SenderApiController{


  Future<ApiResponse> GetAllSender({required bool mail}) async {
    ApiResponse apiResponse = ApiResponse();
    http.Response response = await http.get(
      Uri.parse("${sendersURL}?mail=${mail}"),
      headers: {"Accept": "application/json"},
    );
    apiResponse.data=Sender.fromJson(jsonDecode(response.body));
    return apiResponse;
  }


}