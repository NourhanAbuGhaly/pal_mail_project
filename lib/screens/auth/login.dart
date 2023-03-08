import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pal_mail_project/api/api_setting.dart';
import 'package:pal_mail_project/model/api_response.dart';
import 'package:pal_mail_project/model/user.dart';
import 'package:pal_mail_project/screens/home/home.dart';
import 'package:http/http.dart' as http;
import 'package:pal_mail_project/utils/prefs.dart';
import '../../api/Auth/auth_api_controller.dart';
import '../../utils/constant.dart';
import '../../widget/custom_text_filed.dart';
import '../../widget/social.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const id = 'Login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.h),
        child: Column(
          children: [
            SizedBox(
              height: 32.h,
            ),
            CustomTextFiled(
              hintText: 'Enter email or username',
              controller: _emailController,
            ),
            SizedBox(
              height: 32.h,
            ),
            CustomTextFiled(
              hintText: 'Password',
              obsecure: true,
              controller: _passwordController,
            ),
            SizedBox(
              height: 71.h,
            ),
            TextButton(
              onPressed: () async {
                print('data');

                await _performLogin(_emailController.text.toString(),_passwordController.text.toString());
              },
              child: Container(
                width: double.infinity,
                height: 48.h,
                child: Center(
                    child: Text(
                  'SIGN IN',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    gradient: LinearGradient(
                        end: Alignment.centerLeft,
                        begin: Alignment.centerRight,
                        colors: [
                          primaryColor,
                          Color(0xff6589FF),
                        ])),
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            Center(
              child: Text(
                'OR',
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: Color(0xffA8A7A7),
                ),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SocialMediaButton(
                  imgName: 'face',
                ),
                SocialMediaButton(
                  imgName: 'twitter',
                ),
                SocialMediaButton(
                  imgName: 'google',
                ),
              ],
            ),
            // SizedBox(
            //   height: 40.h,
            // ),
          ],
        ),
      ),
    );
  }

  Future<void> _performLogin(String email, String password) async {
    ApiResponse apiResponse = ApiResponse();
    try {
      final responce = await http.post(Uri.parse(login), headers: {
        "Accept": "application/json"
      }, body: {
        "email": email,
        "password": password,

      });
      print(responce.body);
      print(responce.statusCode);
      switch (responce.statusCode) {
        case 200:
          {
            print("jkbrfjhf");
            apiResponse.data = User.fromJson(jsonDecode(responce.body));
            User user=apiResponse.data as User;
           String pass=_passwordController.text.toString();
            save(user: user, pass: pass);
            print(user.token);
            print("regiseter secuss");
            //Navigator.pushNamed(context, HomeScreen.id,arguments: HomeScreen(data: user,));
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  HomeScreen(data: user,)),
            );
            break;
          }
        case 422:
          {
            final errors = jsonDecode(responce.body)['errors'];
            apiResponse.error = errors[errors.keys.elementAt(0)][0];
          }
          break;
        case 403:
          {
            apiResponse.error = jsonDecode(responce.body)['message'];
          }
          break;
        default:
          apiResponse.error = "somethingWentWrong";
      }
    } catch (e) {
      print("User Service :" + e.toString());
    }
  }
  Future <void> clear()async{
    await SharedPrefController().clear();

  }

  Future<void > save({required User user ,required String pass })async{
    await SharedPrefController().save(user: user, password:pass );
  }
// Future<void> _performLogin() async {
//   if (_checkData()) {
//     await _login();
//   }
// }
//
// bool _checkData() {
//   if (_emailController.text.isNotEmpty &&
//       _passwordController.text.isNotEmpty) {
//     print('dats : ${_emailController.text},,,${_passwordController.text}');
//
//     return true;
//   }
//   print(
//       'empty dats : ${_emailController.text},,,${_passwordController.text}');
//
//   return false;
// }
//
// Future<void> _login() async {
//   bool statues = await AuthApiController().login(
//       email: _emailController.text,
//       password: _passwordController.text,
//       BuildContext: context);
//   if (statues) {
//     Navigator.pushReplacementNamed(context, HomeScreen.id);
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(
//           'Log in Successfully',
//           style: TextStyle(fontSize: 22.sp),
//         ),
//         duration: Duration(seconds: 3),
//         padding: EdgeInsets.all(22),
//         backgroundColor: primaryColor,
//       ),
//     );
//   }
//   print('Status :: $statues');
// }
}
