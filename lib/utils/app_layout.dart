

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
  static getScreenHeight(){
    return Get.height;
  }
  static getScreenWidth(){
    return Get.width;
  }
  static getHeight(pixels){
    double x = getScreenHeight()/pixels;
    return getScreenHeight()/x;
  }
  static getWidth(pixels){
    double x = getScreenWidth()/pixels;
    return getScreenWidth()/x;
  }
}