import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginbloc/bloc/login_bloc.dart';
import 'package:loginbloc/bloc/login_event.dart';
import 'package:loginbloc/bloc/login_state.dart';
import 'package:loginbloc/pages/succes_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    LoginBloc loginBloc = context.read<LoginBloc>();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: usernameController),
          SizedBox(height: 20),
          TextField(controller: passwordController),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              final bool ok = await loginBloc.signup(SignupPressedEvent(valueId: usernameController.text, password: passwordController.text), context.read<LoginState>());
            }
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SuccessPage()),
              );
            },
            child: Text("Signup"),
          ),
        ],
      ),
    );
  }
}
