import 'package:bloc/bloc.dart';
import 'package:diplomski_rad_user_module/bloc/login/login_event.dart';
import 'package:diplomski_rad_user_module/bloc/login/login_state.dart';
import 'package:diplomski_rad_user_module/model/authentication_data.dart';
import 'package:diplomski_rad_user_module/network/rest.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(super.initialState);

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is OnLoginButtonPressed) {
      yield LoginLoading();
      try {
        AuthenticationData authData = await fetchUser(event.formModel);
        yield LoginSuccess(data: authData);
      } catch (e) {
        yield LoginFailure();
      }
    }
  }
}