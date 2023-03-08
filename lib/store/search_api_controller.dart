// import 'package:pal_mail_project/model/api_response.dart';
// import 'package:http/http.dart' as http;
//
// class SearchApiController{
//
//   Future<ApiResponse> GetAllSearch({required String text,required DateTime start,required DateTime end,required int status_id}) async {
//     ApiResponse apiResponse = ApiResponse();
//     http.Response response = await http.get(
//       Uri.parse("${rolesURL}"),
//       headers: {"Accept": "application/json"},
//     );
//     apiResponse.data=Sea.fromJson(jsonDecode(response.body));
//     return apiResponse;
//   }
// }