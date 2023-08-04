import 'package:bloc/bloc.dart';
import 'package:diplomski_rad_user_module/bloc/login/login_event.dart';
import 'package:diplomski_rad_user_module/bloc/login/login_state.dart';
import 'package:diplomski_rad_user_module/model/authentication_data.dart';
import 'package:diplomski_rad_user_module/network/rest.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());

  @override
  Stream<LoginState> onEvent(LoginEvent event) async* {
    super.onEvent(event);
    if(event is OnLoginButtonPressed) {
      yield LoginLoading();
    } else {
      yield LoginFailure();
    }
  }

}