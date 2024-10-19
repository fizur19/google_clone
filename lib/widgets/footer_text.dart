import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  final String titel;

  const FooterText({super.key, required this.titel});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: Text(titel  , style: TextStyle(
      color: Color(0xff70757a)
    ), ));
  }
}
