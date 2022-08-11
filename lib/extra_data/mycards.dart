import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCardsData extends StatelessWidget {
  final String taka;
  final String cardnumber;
  final String durationTime;
  const MyCardsData(
      {Key? key,
      required this.cardnumber,
      required this.durationTime,
      required this.taka})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.deepPurple[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Balance',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "\$" + taka,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardnumber,
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              Text(
                durationTime,
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
