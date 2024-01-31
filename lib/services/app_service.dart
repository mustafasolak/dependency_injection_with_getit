import 'package:flutter/material.dart';

class AppService {

 static int _counter =  0 ;
  
  AppService(){
    _counter++;
    debugPrint("AppService singleton instance is being created $_counter time(s)");
  }

  String execute() {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day, now.hour, now.minute, now.second);
    return date.toString(); 
  }

}
