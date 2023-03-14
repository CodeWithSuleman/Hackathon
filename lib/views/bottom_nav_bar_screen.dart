import 'package:flutter/material.dart';
import 'package:for_instant_help_app/utils/color_constant.dart';
import 'package:for_instant_help_app/views/home_screen.dart';
import 'package:for_instant_help_app/views/login_screen.dart';
import 'package:for_instant_help_app/views/profile.dart';
import 'package:for_instant_help_app/views/signup_screen.dart';
import 'package:for_instant_help_app/widgets/appbarr.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _currentIndex = 0;
  final screens = [
    LoginScreen(),
    SignUpScreen(),
    HomeScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PrimaryAppBar(),
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage(
                  'assets/home.png',
                ),
                color: Color(ConstantColors.secondaryColor),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage(
                  'assets/service.png',
                ),
                color: Color(ConstantColors.secondaryColor),
              ),
              label: "service",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/map.png'),
                  color: Color(ConstantColors.secondaryColor)),
              label: "Map",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage(
                  'assets/user.png',
                ),
                color: Color(ConstantColors.secondaryColor),
              ),
              label: "Profile",
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
