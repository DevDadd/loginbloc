// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:loginbloc/model/user.dart';

class LoginState extends Equatable {
  const LoginState({this.users = const <User>[], this.isLogin = false});
  final List<User> users;
  final bool isLogin;
  @override
  List<Object> get props => [users, isLogin];

  LoginState copyWith({List<User>? users}) {
    return LoginState(users: users ?? this.users, isLogin: isLogin);
  }
}
