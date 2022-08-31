

 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainScreen extends StatelessWidget {

     
  const MainScreen({Key? key})
   : super(key: key);

  @override
  Widget build(BuildContext context) {
      return SafeArea(child: Scaffold(
        body: Column(
           children: [
            TextFormField(
              decoration: InputDecoration(hintText: "@name"),
              //controller: ,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "@phone"),
              //controller: ,
            )
           ],
        ),
      ),);
  }
}