import 'dart:convert';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';


class credentials with ChangeNotifier{
  String username;
  String password;

  Future<bool> validation(String username,String password) async{
    var url ='assets/data/login.json';
   try{
     final response = await rootBundle.loadString(url);
     final extractedData = json.decode(response) as Map<String,dynamic>;
     if(extractedData['username']==username && extractedData['password']==password ){
       print('sucessfull');
     }
     else{
       print('credentails invalid');
     }
   }
   catch(error){
     throw (error);
   }
    notifyListeners();
  }


}

