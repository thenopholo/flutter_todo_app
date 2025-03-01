import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../account/account_page.dart';
import '../home/home_page.dart';
import '../messages/messages_page.dart';
import '../tasks/tasks_page.dart';
import 'cubit/navigation_cubit.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigation();
}

class _MainNavigation extends State<MainNavigation> {
  // int state.currentIndex = 0;

  // final List<Widget> _pages = [
  //   const HomePage(),
  //   const TasksPage(),
  //   const MessagesPage(),
  //   const AccountPage(),
  // ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            shape: const CircleBorder(),
            child: Icon(CupertinoIcons.add),
          ),
          body: _setPage(state.currentIndex),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.currentIndex,
            onTap: (index) {
              context.read<NavigationCubit>().setPage(index);
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: state.currentIndex == 0
                    ? ImageIcon(AssetImage('assets/icons/fill/home_fill.png'))
                    : ImageIcon(
                        AssetImage('assets/icons/outline/home_outline.png')),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: state.currentIndex == 1
                    ? ImageIcon(
                        AssetImage('assets/icons/fill/calendar_fill.png'))
                    : ImageIcon(AssetImage(
                        'assets/icons/outline/calendar_outline.png')),
                label: 'Tasks',
              ),
              BottomNavigationBarItem(
                icon: state.currentIndex == 2
                    ? ImageIcon(
                        AssetImage('assets/icons/fill/message_fill.png'))
                    : ImageIcon(
                        AssetImage('assets/icons/outline/message_outline.png')),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                // TODO: Fix the head shot bug in the icon
                icon: state.currentIndex == 3
                    ? ImageIcon(
                        AssetImage('assets/icons/fill/profile_fill.png'))
                    : ImageIcon(
                        AssetImage('assets/icons/outline/profile_outline.png')),
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }
}

Widget _setPage(int index) {
  switch (index) {
    case 0 :
    return const HomePage();
    case 1 :
    return const TasksPage();
    case 2: 
    return const MessagesPage();
    case 3 :
    return const AccountPage();
    default :
    return const HomePage();
  }
}
