import 'package:equatable/equatable.dart';

class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class SignupPressedEvent extends LoginEvent {
  final String valueId;
  final String password;

  const SignupPressedEvent({required this.valueId, required this.password});

  @override
  List<Object> get props => [valueId, password];
}

class LoginPressedEvent extends LoginEvent {
  final String id;
  final String password;

  const LoginPressedEvent({required this.id, required this.password});

  @override
  List<Object> get props => [id, password];
}
