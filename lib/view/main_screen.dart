

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
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
             children: [
              TextFormField(
                decoration: InputDecoration(hintText: "@name"),
                //controller: ,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "@phone"),
                //controller: ,
              ),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) => 
                    
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("username"),
                              Text("phone"),
                            ],
                          ),
                        ),
                      )
                ),
                
              ),
              ElevatedButton(
                onPressed: () {
                
              }, child: Text("Add to Contact"))
             ],
             
             
          ),
        ),
      ),);
  }
}