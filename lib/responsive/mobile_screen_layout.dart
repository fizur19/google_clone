import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/mobile/mobile_footer.dart';
import 'package:google_clone/widgets/translation_buttons.dart';
import 'package:google_clone/widgets/web/search_buttons.dart';
import 'package:google_clone/widgets/web/web_footer.dart';
import 'package:google_clone/widgets/web/web_search.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: SizedBox(
          width: size.width*0.34,
          child: DefaultTabController(
              length: 2,
              child: TabBar(
                labelColor: blueColor,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: blueColor,
                  tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'IMAGES',
                )
              ])),
        ),
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0).copyWith(right: 10),
            child: MaterialButton(
              color: blueColor,
              onPressed: () {},
              child: Text(
                'Sign in',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.25,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Search(),
                      SizedBox(
                        height: 20,
                      ),
                      SearchButtons(),
                      SizedBox(
                        height: 20,
                      ),
                      TranslationButtons()
                    ],
                  ),
                  MobileFooter()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
