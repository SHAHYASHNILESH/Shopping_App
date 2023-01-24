import 'package:flutter/material.dart';
import 'package:shopping_app/constants/global_variables.dart';

class AddProductScreen extends StatefulWidget {
  static const String routeName='/add-product';
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
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
    );
  }
}
