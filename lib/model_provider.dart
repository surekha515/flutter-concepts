import 'package:flutter/foundation.dart';

class ProviderModel with ChangeNotifier{
  String someValue='Hello';


  void doSomething(){
    someValue='Good Bye';
    print(someValue);
    notifyListeners();
  }

}