import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButtonData extends StatelessWidget {
  final String imagepath;
  final String textName;

  const MyButtonData(
      {Key? key, required this.imagepath, required this.textName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 20,
                spreadRadius: 5,
              )
            ],
          ),
          child: Center(
            child: Image.asset(imagepath),
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Text(
          textName,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
