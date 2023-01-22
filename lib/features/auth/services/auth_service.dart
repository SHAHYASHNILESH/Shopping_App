import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:shopping_app/constants/error_handling.dart';
import 'package:shopping_app/constants/global_variables.dart';
import 'package:shopping_app/constants/utils.dart';
import 'package:shopping_app/models/user.dart';
import 'package:http/http.dart' as http;

class AuthService {
  //signUp user
  void signupUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
          id: '',
          name: name,
          password: password,
          email:email,
          address: '',
          type: '',
          token: '',
      );
      http.Response res=await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(
            context,
            'Account created! Login with the same credentials!',
          );
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
