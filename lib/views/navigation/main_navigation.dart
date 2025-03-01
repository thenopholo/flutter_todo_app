import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../account/account_page.dart';
import '../home/home_page.dart';
import '../messages/messages_page.dart';
import '../tasks/tasks_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigation();
}

class _MainNavigation extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const TasksPage(),
    const MessagesPage(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: Icon(CupertinoIcons.add),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? ImageIcon(AssetImage('assets/icons/fill/home_fill.png'))
                : ImageIcon(
                    AssetImage('assets/icons/outline/home_outline.png')),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? ImageIcon(AssetImage('assets/icons/fill/calendar_fill.png'))
                : ImageIcon(
                    AssetImage('assets/icons/outline/calendar_outline.png')),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? ImageIcon(AssetImage('assets/icons/fill/message_fill.png'))
                : ImageIcon(
                    AssetImage('assets/icons/outline/message_outline.png')),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            // TODO: Fix the head shot bug in the icon
            icon: _currentIndex == 3
                ? ImageIcon(AssetImage('assets/icons/fill/profile_fill.png'))
                : ImageIcon(
                    AssetImage('assets/icons/outline/profile_outline.png')),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
