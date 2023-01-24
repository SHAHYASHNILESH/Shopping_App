import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/constants/global_variables.dart';
import 'package:shopping_app/features/account/screens/account_screen.dart';
import 'package:shopping_app/features/admin/screens/admin_screen.dart';
import 'package:shopping_app/features/home/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double BottomBarWidth = 42;
  double BottomBarBorderWidth = 5;

  List<Widget> pages = [
    const HomeScreen(),
    const AccountScreen(),
    const Center(
      child: Text('Cart Page'),
    ),
    const AdminScreen(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _page,
          selectedItemColor: GlobalVariables.selectedNavBarColor,
          unselectedItemColor: GlobalVariables.unselectedNavBarColor,
          backgroundColor: GlobalVariables.backgroundColor,
          iconSize: 25,
          onTap: updatePage,
          items: [
            //Home
            BottomNavigationBarItem(
              icon: Container(
                width: BottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: _page == 0
                              ? GlobalVariables.selectedNavBarColor
                              : GlobalVariables.backgroundColor,
                          width: BottomBarBorderWidth)),
                ),
                child: const Icon(Icons.home_outlined),
              ),
              label: '',
            ),

            //Account
            BottomNavigationBarItem(
              icon: Container(
                width: BottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: _page == 1
                              ? GlobalVariables.selectedNavBarColor
                              : GlobalVariables.backgroundColor,
                          width: BottomBarBorderWidth)),
                ),
                child: const Icon(Icons.person_outlined),
              ),
              label: '',
            ),

            //CART
            BottomNavigationBarItem(
              icon: Container(
                width: BottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: _page == 2
                              ? GlobalVariables.selectedNavBarColor
                              : GlobalVariables.backgroundColor,
                          width: BottomBarBorderWidth)),
                ),
                child: Badge(
                  elevation: 0,
                  badgeContent: const Text(
                    '2',
                  ),
                  badgeColor: Colors.white,
                  child: const Icon(Icons.shopping_cart_outlined),
                ),
              ),
              label: '',
            ),

            BottomNavigationBarItem(
              icon: Container(
                width: BottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: _page == 3
                              ? GlobalVariables.selectedNavBarColor
                              : GlobalVariables.backgroundColor,
                          width: BottomBarBorderWidth)),
                ),
                child: const Icon(Icons.admin_panel_settings),
              ),
              label: '',
            ),
          ]),
    );
  }
}
