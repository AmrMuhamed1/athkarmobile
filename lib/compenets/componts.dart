
import 'package:athkar_mobile/SCREEN/Home_Screen.dart';
import 'package:flutter/material.dart';

Widget Button({
  required VoidCallback function ,
}) => Container(
  width: double.infinity,
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
          onPressed: function ,
          child: Text(
            'أبدأ',
            style: TextStyle(fontSize: 24, color: Colors.black87),
          )),
    );
