import 'package:diplomski_rad_user_module/model/login_form.dart';

abstract class LoginEvent {

}

class OnLoginButtonPressed extends LoginEvent {
  final LoginFormModel formModel;

  OnLoginButtonPressed({
    required this.formModel
  });
}