import 'package:flutter/material.dart';
import 'package:vpn_app/utils/utils.dart';
Widget circularButtonWidget(BuildContext context){
  final size = MediaQuery.of(context).size;
  return Positioned(
    bottom: -size.width*0.36,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: size.width*0.51,
            width: size.width*0.51,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: curveGradient
            ),
            child: Center(
              child: Container(
                height: size.width*0.4,
                width: size.width*0.4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bgColor
                ),
                child: Center(
                  child: Container(
                    height: size.width*0.3,
                    width: size.width*0.3,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.greenAccent,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff00d58d).withOpacity(.2),
                          spreadRadius: 15,
                          blurRadius: 15
                        )
                      ]
                    ),
                    child: Center(
                      child:Icon(Icons.wifi_lock,color: Colors.white,size: 50,),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 14,
            top: 30,
            child: Container(
              padding: EdgeInsets.all(8),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: bgColor,
                shape: BoxShape.circle
              ),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(reinoUnidoFlag),
                  radius: 40,
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          )
        ],
      ));
}