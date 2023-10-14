import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reach_out/ui/screens/home_feed_screen.dart';
import 'package:reach_out/ui/screens/my_expert_screen.dart';
import 'package:reach_out/ui/screens/notifications_screen.dart';
import 'package:reach_out/ui/screens/profile_screen.dart';
import 'package:reach_out/ui/state_holders/base_nav_screen_controller.dart';

class BaseNavScreen extends StatefulWidget {
  const BaseNavScreen({super.key});

  @override
  State<BaseNavScreen> createState() => _BaseNavScreenState();
}

class _BaseNavScreenState extends State<BaseNavScreen> {
  final List<Widget> _screens = [
    const HomeFeedScreen(),
    const MyExpertScreen(),
    const NotificationsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BaseNavController>(builder: (controller) {
      return Scaffold(
        body: _screens[controller.currentSelectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentSelectedIndex,
          onTap: controller.changeScreen,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          elevation: 4,
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.dashboard,
                ),
                label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_active,
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: 'Wishlist'),
          ],
        ),
      );
    });
  }
}