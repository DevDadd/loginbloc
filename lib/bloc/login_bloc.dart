import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:loginbloc/bloc/login_event.dart';
import 'package:loginbloc/bloc/login_state.dart';
import 'package:loginbloc/model/user.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<SignupPressedEvent>(signup);
    on<LoginPressedEvent>(login);
  }
  Future<void> signup(
    SignupPressedEvent event,
    Emitter<LoginState> emit,
  ) async {
    bool isAdded = false;
    for (var i in state.users) {
      if (i.account == event.valueId) {
        isAdded = true;
      }
    }
    if (!isAdded) {
      final newUser = User(account: event.valueId, password: event.password);
      emit(state.copyWith(users: [...state.users, newUser]));
      return event.completer.complete(true);
    }
    return event.completer.complete(false);
  }

  Future<bool> login(LoginPressedEvent event, Emitter<LoginState> emit) async {
    bool ok = false;
    for (var i in state.users) {
      if (i.account == event.id && i.password == event.password) {
        ok = true;
      }
    }
    return ok;
  }
}
