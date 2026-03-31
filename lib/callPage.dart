import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(child: Text('М')),
          title: Text('Мама'),
          subtitle: Text('Сегодня'),
        ),
      ],
    );
  }
}
