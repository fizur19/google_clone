import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FooterText(titel: 'About'),
              SizedBox(
                width: 10,
              ),
              FooterText(titel: 'Advertising'),
              SizedBox(
                width: 10,
              ),
              FooterText(titel: 'Business'),
              SizedBox(
                width: 10,
              ),
              FooterText(titel: 'How Search Works'),
              SizedBox(
                width: 10,
              ),
            ],
          )  ,  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FooterText(titel: 'Privacy'),
              SizedBox(
                width: 10,
              ),
              FooterText(titel: 'Terms'),
              SizedBox(
                width: 10,
              ),
              FooterText(titel: 'Settings'),
              SizedBox(
                width: 10,
              ),

            ],
          )
        ],
      ),
    );
  }
}
