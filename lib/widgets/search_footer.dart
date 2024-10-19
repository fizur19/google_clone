import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearchFooter extends StatelessWidget {
  SearchFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          color: footerColor,
          padding: EdgeInsets.symmetric(
            horizontal: 150,
            vertical: 15,
          ),
          child: Row(
            children: [
              Text(
                "Banglades",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 0.5,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.circle,
                color: Color(0xff70757A),
                size: 12,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '1200 , Dhaka',
                style: TextStyle(fontSize: 14, color: primaryColor),
              )
            ],
          ),
        ),
        Divider(
          thickness: 0,
          height: 9,
          color: Colors.black26,
        ),
        Container(
          color: footerColor,
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              Text("Help"  , style: TextStyle(
                color: Colors.grey.shade700 ,
                fontSize: 15
              ), ),
              SizedBox(width: 20,)  ,
              Text("Send Feedback"  , style: TextStyle(
                  color: Colors.grey.shade700 ,
                  fontSize: 15
              ), ),
              SizedBox(width: 20,)
              ,
              Text("Privacy"  , style: TextStyle(
                  color: Colors.grey.shade700 ,
                  fontSize: 15
              ), ),
              SizedBox(width: 20,)
              ,
              Text("Terms"  , style: TextStyle(
                  color: Colors.grey.shade700 ,
                  fontSize: 15
              ), ),
              SizedBox(width: 20,)
            ],
          ),
        )
      ],
    );
  }
}
