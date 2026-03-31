import 'package:flutter/material.dart';
import 'package:lesson_6/appDrawer.dart';
import 'package:lesson_6/callPage.dart';
import 'package:lesson_6/chat_page.dart';
import 'package:lesson_6/contactPage.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  final pages = const [
    ChatPage(),
    CallPage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(getTitle())),
      drawer: AppDrawer(
        onSelect: (i) {
          setState(() => index = i);
          Navigator.pop(context);
        },
      ),
      body: pages[index],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) => setState(() => index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Чаты'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Звонки'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Контакты'),
        ],
      ),
    );
  }

  String getTitle() {
    switch (index) {
      case 0:
        return 'Telegram';
      case 1:
        return 'Звонки';
      case 2:
        return 'Контакты';
      default:
        return '';
    }
  }
}