import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/search_screen.dart';
import 'package:google_clone/widgets/web/search_buttons.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: Image.asset(
              'assets/images/google-logo.png',
              height: size.height * 0.12,
            )),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: size.width > 768 ? size.width * 0.4 : size.width * 0.9,
          child: TextFormField(
            onFieldSubmitted: (value) {

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SearchScreen(
                    searchQuery: value,
                    start: '0',
                  ),
                ));

            },

            decoration: InputDecoration(

                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: searchBorder,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/images/search-icon.svg',
                    color: searchBorder,
                    width: 1,
                    height: 1,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/images/mic-icon.svg',
                  ),
                )),
          ),
        ),

      ],
    );
  }
}
