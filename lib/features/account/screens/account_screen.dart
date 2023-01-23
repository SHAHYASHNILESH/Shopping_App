import 'package:flutter/material.dart';
import 'package:shopping_app/constants/global_variables.dart';
import 'package:shopping_app/features/account/widgets/below_app_bar.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
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
                    'https://imgs.search.brave.com/jI0vvqw1uN6t26Mnd55qz7zfKa61aEzt6r-c8S-tgPQ/rs:fit:500:500:1/g:ce/aHR0cDovLzMuYnAu/YmxvZ3Nwb3QuY29t/Ly0wVWtNSGtxTHUw/MC9WbndyLTl1XzZZ/SS9BQUFBQUFBQVVS/RS9kQ3RMQ3VLaDBT/Yy9zMTYwMC8xMDQ5/NDY2MV8xNTgxMDIy/MDc4ODE2NzgwXzc4/ODM1MjgyNTA3MTMx/NDgxNDZfbi5qcGc',
                    fit: BoxFit.fitHeight,
                    height: 70,
                    width: 120,
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: const [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child:Icon(Icons.notifications_outlined),
                        ),
                        Icon(Icons.search),
                      ],
                    ))
              ],
            ),
          )),
      body:Column(
        children: const [
          BelowAppBar(),

        ],
      )
    );
  }
}
