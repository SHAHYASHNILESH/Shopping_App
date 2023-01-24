import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/constants/global_variables.dart';
import 'package:shopping_app/features/admin/screens/post_screen.dart';

class AdminScreen extends StatefulWidget {
  static const String routeName = '/admin';
  const AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  int _page = 0;
  double BottomBarWidth = 42;
  double BottomBarBorderWidth = 5;

  List<Widget> pages = [
    const PostScreen(),
    const Center(
      child: Text('Analytics Page'),
    ),
    const Center(
      child: Text('Orders Page'),
    ),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBar(
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  gradient: GlobalVariables.appBarGradient,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Image.network(
                      'https://imgs.search.brave.com/KM7quhM52jsvQ9GvPdtuZyxSk-fLWyE6byPpssYYjcY/rs:fit:1200:630:1/g:ce/aHR0cDovL3d3dy5h/cHBzbWl6ZS5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMjAv/MDYvMTU5MzM4Mjgy/NF8xMjAweDYzMHdh/LnBuZw',
                      fit: BoxFit.fitHeight,
                      height: 50,
                      width: 120,
                    ),
                  ),
                  const Text(
                    'Admin',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )),
        body: pages[_page],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _page,
            selectedItemColor: GlobalVariables.selectedNavBarColor,
            unselectedItemColor: GlobalVariables.unselectedNavBarColor,
            backgroundColor: GlobalVariables.backgroundColor,
            iconSize: 20,
            onTap: updatePage,
            items: [
              //Products
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

              //Analytics
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
                  child: const Icon(Icons.analytics_outlined),
                ),
                label: '',
              ),

              //Orders
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
                  child: const Icon(Icons.all_inbox_outlined),
                ),
                label: '',
              ),
            ]));
  }
}
