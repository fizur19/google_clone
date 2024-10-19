import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/services/api_service.dart';
import 'package:google_clone/widgets/search_footer.dart';
import 'package:google_clone/widgets/search_result_component.dart';
import 'package:google_clone/widgets/search_tabs.dart';
import 'package:google_clone/widgets/web/web_search_header.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;

  const SearchScreen(
      {super.key, required this.searchQuery, required this.start});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchHeader(),
                Padding(
                  padding:
                      EdgeInsets.only(left: size.width <= 768 ? 0 : 150.0),
                  child: SearchTabs(),
                ),
                Divider(
                  height: 0,
                  thickness: 0.3,
                ),
                FutureBuilder(
                  future: ApiService().fetchData(
                      context: context, queryTerm: searchQuery, start: start),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Container(
                          //   padding: EdgeInsets.only(
                          //     left: 150  ,
                          //     right: 12
                          //   ),
                          //   child: Text('About ${snapshot.data?['formattedTotalResults'] } results ${snapshot.data?['formattedSearchTime'] }  seconds ' ),
                          // )
                          Container(
                            padding: EdgeInsets.only(left: 150, right: 12),
                            child: Text(
                              'About ${snapshot.data?['searchInformation']?['formattedTotalResults']} results in (${snapshot.data?['searchInformation']?['formattedSearchTime']}    )    seconds',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff70757a)),
                            ),
                          ),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: snapshot.data?['items'].length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    left: size.width <= 768 ? 10 : 150,
                                    top: 10),
                                child: SearchResultComponent(
                                  linkToGo: snapshot.data?['items'][index]
                                      ['link'],
                                  link: snapshot.data?['items'][index]
                                      ['formattedUrl'],
                                  text: snapshot.data?['items'][index]['title'],
                                  des: snapshot.data?['items'][index]
                                      ['snippet'],
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      if (start != ['0']) {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => SearchScreen(
                                            searchQuery: searchQuery,
                                            start: (int.parse(start) - 10)
                                                .toString(),
                                          ),
                                        ));
                                      }
                                    },
                                    child: Text(
                                      '< Prev',
                                      style: TextStyle(
                                          fontSize: 15, color: blueColor),
                                    )),
                                SizedBox(
                                  width: 30,
                                ),
                                TextButton(
                                    onPressed: () {
                                      if (start != ['0']) {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => SearchScreen(
                                            searchQuery: searchQuery,
                                            start: (int.parse(start) + 10)
                                                .toString(),
                                          ),
                                        ));
                                      }
                                    },
                                    child: Text(
                                      'Next >',
                                      style: TextStyle(
                                          fontSize: 15, color: blueColor),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SearchFooter()
                        ],
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
