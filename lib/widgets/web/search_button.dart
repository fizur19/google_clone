import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key, required this.titel});

  final String titel;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      color: searchColor,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
      child: Text(titel),
      onPressed: () {},
    );
  }
}
