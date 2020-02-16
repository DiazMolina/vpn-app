import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpn_app/utils/utils.dart';
import 'package:vpn_app/widgets/bottom_row.dart';
import 'package:vpn_app/widgets/custom_cliper.dart';
import 'package:vpn_app/widgets/top_row.dart';

Widget upperCurvedContainer(BuildContext context){
  return ClipPath(
    clipper: MyCustomCliper(
    ),
    child: Container(
      padding: EdgeInsets.all(8),
      height: 320,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: curveGradient
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          topRow(context),
          Text('Satelite VPN',style: vpnStyle),
          bottomRow()
        ],
      ),
    ),
  );
}