import 'package:flutter/material.dart';
import 'package:loginbloc/model/user.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: [Text(user.account), Text(user.password)]),
      ),
    );
  }
}
