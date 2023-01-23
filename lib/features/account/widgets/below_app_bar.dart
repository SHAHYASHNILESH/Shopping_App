import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/constants/global_variables.dart';
import 'package:shopping_app/providers/user_provider.dart';

class BelowAppBar extends StatelessWidget {
  const BelowAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Container(
        decoration: const BoxDecoration(
          gradient: GlobalVariables.appBarGradient,
        ),
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10,top: 15),
        child: Row(
          children: [
            RichText(
              text: TextSpan(
                  text: 'Hello, ',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: user.name,
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
          ],
        ));
  }
}
