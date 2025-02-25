import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class CacheData  {

  //create instance
   static SharedPreferences? preferences ;
  //init instance
static  cacheInit() async{
  preferences = await SharedPreferences.getInstance();
}

//set data

static Future setData({required String key, required dynamic value}) async{ //key (string) value (dynamic)
  if(value is int){
   return await preferences!.setInt(key, value);


  }

  if(value is String) {
   return await preferences!.setString(key, value);

  }
  if(value is double){
  return await preferences!.setDouble(key, value);
  }
  if(value is bool){
    return await preferences!.setBool(key, value);
  }
  return false;
}

 static dynamic getData({required key }) {
  return preferences!.get(key);

}

}