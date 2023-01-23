import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/constants/global_variables.dart';
import 'package:shopping_app/features/account/widgets/below_app_bar.dart';
import 'package:shopping_app/features/account/widgets/orders.dart';
import 'package:shopping_app/features/account/widgets/top_buttons.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

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
                  Container(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        children: const [
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Icon(Icons.notifications_outlined),
                          ),
                          Icon(Icons.search),
                        ],
                      ))
                ],
              ),
            )),
        body: Column(
          children: const [
            BelowAppBar(),
            SizedBox(
              height: 10,
            ),
            TopButtons(),
            SizedBox(
              height: 20,
            ),
            Orders(),
          ],
        ));
  }
}
