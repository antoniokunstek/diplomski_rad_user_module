import 'package:diplomski_rad_user_module/model/authentication_data.dart';

abstract class LoginState {
  const LoginState();
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final AuthenticationData data;

  LoginSuccess({required this.data});
}

class LoginFailure extends LoginState {}
