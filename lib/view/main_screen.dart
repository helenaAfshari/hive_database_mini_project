

 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hive_database_mini_project/controller/user_contact_controller.dart';

class MainScreen extends StatelessWidget {
    
   UserContactController userContactController = Get.put(UserContactController());
     
   MainScreen({Key? key})
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
                controller: userContactController.nametextEditingController,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "@phone"),
                controller: userContactController.phonetextEditingController ,
              ),
              SizedBox(
                child: Obx(
                  () =>  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) => 
                      
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(userContactController.contactList[index].name),
                                Text(userContactController.contactList[index].phone),
                              ],
                            ),
                          ),
                        )
                  ),
                ),
                
              ),
              ElevatedButton(
                onPressed: () {
                  userContactController.addToContactList();
                
              }, child: Text("Add to Contact"))
             ],
             
             
          ),
        ),
      ),);
  }
}