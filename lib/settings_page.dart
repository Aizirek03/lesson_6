import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Настройки')),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Профиль'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Уведомления'),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Язык'),
          ),
        ],
      ),
    );
  }
}