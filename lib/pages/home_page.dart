import 'package:flutter/material.dart';
import 'package:vpn_app/utils/utils.dart';
import 'package:vpn_app/widgets/circular_button_widget.dart';
import 'package:vpn_app/widgets/locationCard.dart';
import 'package:vpn_app/widgets/status_text.dart';
import 'package:vpn_app/widgets/upper_curved_container.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              upperCurvedContainer(context),
              circularButtonWidget(context)
            ],
          ),
          SizedBox(height: screenWidth*0.40),
          statusText(context),
          SizedBox(height: screenWidth*0.05),
          locationCard(context,'United Kingdom','Random Location',Colors.transparent,reinoUnidoFlag),
          SizedBox(height: 20),
          locationCard(context,'Spain','Select Location',Colors.transparent,spainFlag)
        ],
      )
    );
  }
}
