import 'package:flutter/material.dart';
import 'package:vpn_app/utils/utils.dart';

Widget statusText(BuildContext context) {
  return Align(
    alignment: Alignment.center,
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(text: 'Status :',
          style: connectedStyle,
          children: [
        TextSpan(text: 'Connected\n',style: connectedGreenStyle),
        TextSpan(text: '00:22:56',style: connectedTimeStyle)
      ]),
    ),
  );
}
