

import 'package:hive/hive.dart';

//create Adapter with Build_runner
   part 'user_model.g.dart';

      @HiveType(typeId: 0)
     class UserModel extends HiveObject{
       
        @HiveField(0)
        String name;
        @HiveField(1)
        String phone;

        //create constructor
        UserModel({

          required this.name,
          required this.phone,
        });

   }