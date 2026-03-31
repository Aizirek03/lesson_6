import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(child: Text('A')),
          title: Text('Алексей'),
          subtitle: Text('в сети'),
        ),
      ],
    );
  }
}