import 'package:flutter/material.dart';
import 'package:vpn_app/utils/utils.dart';

Widget bottomRow(){
  return Row(
    mainAxisAlignment:  MainAxisAlignment.spaceBetween,
      children: <Widget>[
    Text('Upload\n546 kb/s',style: speedStyle),
    Text('Download\n546 mb/s',style: speedStyle)
  ]);
}