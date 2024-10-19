import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearchTab extends StatelessWidget {
  final IconData icon;
  bool isActive;
  final String text;

  SearchTab(
      {super.key,
      required this.icon,
      this.isActive = false,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 18,
                color: isActive ? blueColor : Colors.grey,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                text,
                style: TextStyle(
                    color: isActive ? blueColor : Colors.grey, fontSize: 15),
              )
            ],
          ),
          SizedBox(
            height: 7,
          ),
         isActive ? Container(
            height: 3,
            width: 40,
            color: blueColor,
          ) : Container()
        ],
      ),
    );
  }
}
