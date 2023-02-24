import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:plateforme_univ/Screens/pages/announcements_page.dart';
import 'package:plateforme_univ/Screens/pages/email_page.dart';
import 'package:plateforme_univ/Screens/pages/grades_page.dart';
import 'package:plateforme_univ/Screens/pages/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const AnnouncementsPage(),
    const EmailPage(),
    const GradesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          width: double.infinity,
          // height: double.tryParse('80'),
          decoration: const BoxDecoration(
            color: Colors.black54,
            boxShadow:  [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black12,
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: GNav(
              tabActiveBorder: Border.all(color: Colors.white, width: 2),
              gap: 5,
              activeColor: Colors.white,
              iconSize: 30,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              duration: const Duration(milliseconds: 300),
              tabBackgroundColor: Colors.grey.shade800,
              color: Colors.white,
              tabs: const [
                GButton(
                  backgroundGradient: LinearGradient(
                    colors: [Colors.blue, Colors.redAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  backgroundGradient: LinearGradient(
                    colors: [Colors.blue, Colors.redAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  icon: Icons.notifications_active,
                  iconActiveColor: Colors.cyan,
                  text: 'Announcements',
                ),
                GButton(
                  backgroundGradient: LinearGradient(
                    colors: [Colors.blue, Colors.redAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  icon: Icons.email,
                  text: 'EMail',
                  iconActiveColor: Colors.green,
                ),
                GButton(
                  backgroundGradient: LinearGradient(
                    colors: [Colors.blue, Colors.redAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  icon: Icons.grade,
                  iconActiveColor: Colors.yellow,
                  text: 'Grades',
                ),
              ],
              selectedIndex: 0,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
        body: _pages[_selectedIndex]);
  }
}
