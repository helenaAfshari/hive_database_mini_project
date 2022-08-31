import 'package:flutter/material.dart';
import 'package:hive_database_mini_project/view/main_screen.dart';
import 'package:hive_flutter/adapters.dart';

void main() async{

  //must use Hive initFlutter in project
   await Hive.initFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home:  MainScreen(),
    );
  }
}

