// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:loginbloc/model/user.dart';

class LoginState extends Equatable {
  const LoginState({
    this.users = const <User>[],
    this.isLogin = false,
    this.isSignUp = false,
  });
  final List<User> users;
  final bool isLogin;
  final bool isSignUp;
  @override
  List<Object> get props => [users, isLogin, isSignUp];

  LoginState copyWith({List<User>? users, bool? isLogin, bool? isSignUp}) {
    return LoginState(
      users: users ?? this.users,
      isLogin: isLogin ?? this.isLogin,
      isSignUp: isSignUp ?? this.isSignUp,
    );
  }
}
