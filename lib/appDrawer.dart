import 'package:flutter/material.dart';
import 'package:lesson_6/add.dart';
import 'package:lesson_6/settings_page.dart';


class AppDrawer extends StatelessWidget {
  final Function(int) onSelect;

  const AppDrawer({super.key, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 160,
            color: const Color(0xFF2AABEE),
            padding: const EdgeInsets.all(16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Color(0xFF2AABEE)),
                ),
                SizedBox(height: 10),
                Text('Айзирек',
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                Text('+996 700 123 456',
                    style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),

          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text('Чаты'),
            onTap: () => onSelect(0),
          ),
          ListTile(
            leading: const Icon(Icons.call),
            title: const Text('Звонки'),
            onTap: () => onSelect(1),
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Контакты'),
            onTap: () => onSelect(2),
          ),

          const Divider(),

          /// 🔥 ТЕМА
          SwitchListTile(
            title: const Text('Тёмная тема'),
            value: MyApp.of(context).isDark,
            onChanged: (v) => MyApp.of(context).toggleTheme(),
          ),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Настройки'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SettingsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}