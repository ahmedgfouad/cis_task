import 'package:flutter/material.dart';

Widget ColorsItem({
  required int color,
  IconData? icon,
  double? radius,
}) =>
    CircleAvatar(
      radius: 12,
      backgroundColor: Colors.grey,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Color(color),
        child: Center(child: Icon(icon)),
      ),
    );
