import 'package:flutter/material.dart';
import 'package:shopping_app/constants/global_variables.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double BottomBarWidth =20;
  double BottomBarBorderWidth = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _page,
          selectedItemColor: GlobalVariables.selectedNavBarColor,
          unselectedItemColor: GlobalVariables.unselectedNavBarColor,
          backgroundColor: GlobalVariables.backgroundColor,
          iconSize: 28,
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
                child: const Icon(Icons.home_outlined),
              ),
              label: '',
            ),
          ]),
    );
  }
}
