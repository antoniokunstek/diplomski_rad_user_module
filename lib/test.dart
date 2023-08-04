import 'dart:convert';

import 'package:diplomski_rad_user_module/model/authentication_data.dart';
import 'package:diplomski_rad_user_module/model/login_form.dart';
import 'package:diplomski_rad_user_module/network/rest.dart';
import 'package:http/http.dart';

void main() {
    testUser();
}

void testUser() async {
  LoginFormModel model = LoginFormModel(email: "lsmanaic@foi.hr", password: "12345678");
  AuthenticationData data = await fetchUser(model);

}