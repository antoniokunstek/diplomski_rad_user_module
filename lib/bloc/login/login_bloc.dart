import 'package:bloc/bloc.dart';
import 'package:diplomski_rad_user_module/bloc/login/login_event.dart';
import 'package:diplomski_rad_user_module/bloc/login/login_state.dart';
import 'package:diplomski_rad_user_module/model/authentication_data.dart';
import 'package:diplomski_rad_user_module/network/rest.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<OnLoginButtonPressed>(_onLoginButtonPressed);
  }

  Future<void> _onLoginButtonPressed(OnLoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    try {
        emit(LoginSuccess(data: AuthenticationData(jwtToken: "jwtToken", timestamp: "timestamp")));
        emit(LoginFailure());
    } catch (e) {
      emit(LoginFailure());
    }
  }
}





