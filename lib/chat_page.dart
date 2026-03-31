import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(child: Text('A')),
          title: Text('Алексей'),
          subtitle: Text('Привет! Как дела?'),
          trailing: Text('12:30'),
        ),
        ListTile(
          leading: CircleAvatar(child: Text('М')),
          title: Text('Мама'),
          subtitle: Text('Позвони мне'),
          trailing: Text('10:02'),
        ),
      ],
    );
  }
}