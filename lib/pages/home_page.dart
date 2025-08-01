import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginbloc/bloc/login_bloc.dart';
import 'package:loginbloc/bloc/login_event.dart';
import 'package:loginbloc/bloc/login_state.dart';
import 'package:loginbloc/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    LoginBloc loginBloc = context.read<LoginBloc>();
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        // if (state.isSignUp == true) {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => LoginPage()),
        //   );
        // }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextField(controller: usernameController),
            SizedBox(height: 20),
            TextField(controller: passwordController),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final Completer<bool> completer = Completer();
                loginBloc.add(
                  SignupPressedEvent(
                    valueId: usernameController.text,
                    password: passwordController.text,
                    completer: completer,
                  ),
                );
                final isSignup = await completer.future;
                if (isSignup) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                }
              },

              child: Text("Signup"),
            ),
          ],
        ),
      ),
    );
  }
}
