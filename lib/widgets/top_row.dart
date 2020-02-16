 import 'package:flutter/material.dart';
import 'package:vpn_app/utils/utils.dart';
Widget topRow(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    Container(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
      height: 50,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: <Widget>[
          Image.asset('assets/crown.png'),
          SizedBox(width: 12),
          Text("Go Premium",style: TextStyle(
            color: Colors.white
          ),)
        ],
      ),
    ) ,
      Container(
        height: 50,
          width: 50,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: Icon(Icons.tune,size: 26,color: Colors.white,),
        ),
      )
    ],
  );
}