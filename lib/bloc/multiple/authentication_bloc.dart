import 'package:bloc/bloc.dart';

import '../login/authentication_event.dart';
import '../login/authentication_state.dart';

abstract class IAuthenticationBloc  {
  Future<void> _onLoginButtonPressed(OnLoginButtonPressed event, Emitter<AuthenticationState> emit);
  Future<void> _onRegisterButtonPressed(OnRegisterButtonPressed event, Emitter<AuthenticationState> emit);
}


class ConcreteImplementationBloc extends Bloc<AuthenticationEvent, AuthenticationState> implements IAuthenticationBloc {
  ConcreteImplementationBloc(): super(AuthenticationInitial()) {
    on<OnLoginButtonPressed>(_onLoginButtonPressed);
    on<OnRegisterButtonPressed>(_onRegisterButtonPressed);
  }
  @override
  Future<void> _onLoginButtonPressed(OnLoginButtonPressed event, Emitter<AuthenticationState> emit) async {
    print("From1");
    throw UnimplementedError();
  }

  @override
  Future<void> _onRegisterButtonPressed(OnRegisterButtonPressed event, Emitter<AuthenticationState> emit) async {
    print("From1");
    throw UnimplementedError();
  }
}

class ConcreteImplementationBloc2 extends Bloc<AuthenticationEvent, AuthenticationState> implements IAuthenticationBloc {
  ConcreteImplementationBloc2(): super(AuthenticationInitial()) {
    on<OnLoginButtonPressed>(_onLoginButtonPressed);
    on<OnRegisterButtonPressed>(_onRegisterButtonPressed);
  }
  @override
  Future<void> _onLoginButtonPressed(OnLoginButtonPressed event, Emitter<AuthenticationState> emit) async {
    print("From2");
    throw UnimplementedError();
  }

  @override
  Future<void> _onRegisterButtonPressed(OnRegisterButtonPressed event, Emitter<AuthenticationState> emit) async {
    print("From2");
    throw UnimplementedError();
  }
}
