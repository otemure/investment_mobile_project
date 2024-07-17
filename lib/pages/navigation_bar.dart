import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'home_page.dart';
import 'asset_page.dart';
import 'notification.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Navigation();
  }
}

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final screens = [
    const Home(),
    const Asset(),
    const NotificationScreen(),
    const Profile()
  ];
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: myIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedItemColor: const Color(0XFF31A05F),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home',
              backgroundColor: Color(0XFF31A05F)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance,
                size: 30,
              ),
              label: 'Asset',
              backgroundColor: Color(0XFFf78e6d)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 30.0,
              ),
              label: 'Notification',
              backgroundColor: Color(0XFFf78e6d)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_3,
                size: 30,
              ),
              label: 'Account',
              backgroundColor: Color(0XFFf78e6d)),
        ],
      ),
    );
  }
}
