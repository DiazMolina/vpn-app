import 'package:flutter/material.dart';
import 'package:vpn_app/utils/utils.dart';

Widget locationCard(BuildContext context,country,title,cardBgColor,flag) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 32),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: locationStyle),
        SizedBox(height: 14.0),
        Container(
          height: 80,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: cardBgColor,
            border: Border.all(
              color: Color(0xff9bb1bd),
              style: BorderStyle.solid,
              width: 0.5
            ),
              borderRadius: BorderRadius.circular(8)
          ),
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 20,
                backgroundImage: NetworkImage(flag),
              ),
              title: Text(country,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
              trailing: Icon(Icons.refresh,size: 28,color: Colors.white70,),
            ),
          ),
        )
      ],
    ),
  );
}
