import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginbloc/bloc/login_bloc.dart';
import 'package:loginbloc/model/user.dart';
import 'package:loginbloc/pages/user_info_page.dart';
import 'package:loginbloc/widgets/item_container.dart';

class SuccessPage extends StatelessWidget {
  SuccessPage({super.key});
  List<Color> colors = [Colors.blue, Colors.red, Colors.green, Colors.yellow];
  List<User> users = [
    User(account: 'meo', password: '123'),
    User(account: 'dog', password: '123'),
    User(account: 'bird', password: '123'),
    User(account: 'chicken', password: '123'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Success Page')),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ItemContainer(
            color: colors[index],
            title: users[index].account,
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 10);
        },

        itemCount: users.length,
      ),
    );
  }

  Widget _buildItem({
    required Color color,
    required String text,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        color: color,
        child: Text(text, style: TextStyle(fontSize: 50)),
      ),
    );
  }
}
