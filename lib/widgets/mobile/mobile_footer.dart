import 'package:flutter/material.dart';
import 'package:google_clone/widgets/footer_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
    );
  }
}
