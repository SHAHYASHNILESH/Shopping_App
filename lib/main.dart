import 'package:flutter/material.dart';
import 'package:shopping_app/constants/global_variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
              color:Colors.black,
          ),
        )
      ),
      home:Scaffold(
        appBar: AppBar(
          title:const Text('Hello.'),
        ),
          body: Center(
              child: Text("FLUTTER DEMO HOME PAGE")
          )
      ),
    );
  }
}

