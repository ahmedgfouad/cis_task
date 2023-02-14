import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Button({
  required String text,
  int? colorContainer=0xFFFFFFFF,
    int? colorText=0xFF000000,
  double? width =200,
  double? height =35,
})=>Container(
  width: width,
  height: height,
  decoration: BoxDecoration(
    border: Border.all(width: 1, color: Colors.grey),
    borderRadius: BorderRadius.circular(20),
    color: Color(colorContainer!),
  ),
  child: Center(
    child: Text("$text",style:
    TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 19,
        color: Color(colorText!),
    )),
  ),
);