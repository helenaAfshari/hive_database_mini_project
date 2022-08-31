

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive_database_mini_project/constants/hive_keys.dart';
import 'package:hive_database_mini_project/model/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserContactController extends GetxController{

    
    TextEditingController nametextEditingController = TextEditingController();
    TextEditingController phonetextEditingController = TextEditingController();

    RxList <UserModel> contactList = RxList();
    

           @override
           onInit()async{
            super.onInit();
            await readToContact();
           }

    addToContactList()async{
         
         //create Box
        var box = await Hive.openBox(HiveFieldConstants.userContactListBox);

        // Add controller in list
        var user = UserModel(
          name: nametextEditingController.text,
           phone: phonetextEditingController.text);
            
            //user add in box
            box.add(user);

            box.close();

            //read user from box 
             box.values.forEach((element) {
              UserModel userModel = element;
              contactList.add(userModel);
              print(userModel.name);
             });
    }


readToContact()async{
     var box = await Hive.openBox(HiveFieldConstants.userContactListBox);
     box.values.forEach((element) {
      UserModel userModel = element;
          contactList.add(userModel);
          print(userModel.name);
     });
}
}

