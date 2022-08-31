

import 'package:hive/hive.dart';


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