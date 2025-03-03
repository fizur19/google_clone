import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_clone/config/api_json.dart';
import 'package:google_clone/config/api_keys.dart';
import 'package:http/http.dart' as http;

class ApiService {
  bool isDummyData = true;

  Future<Map<String, dynamic>> fetchData(
      {required BuildContext context,
      required String queryTerm,
      String start = "0"}) async {
    try {
      if (!isDummyData) {
        String q = queryTerm.contains(' ')
            ? queryTerm.split(' ').join('%20')
            : queryTerm;




        final respons = await   http.get(Uri.parse('https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$contextKey&q=$q&start=$start')) ;
        if(respons.statusCode == 200) {
          final jsonData = respons.body ;
          final responsData  = jsonDecode(jsonData);
          return responsData ;
        }
      }
    } catch (e) {
      print(' ${e}.');


    }
    return apiResponse ;
  }
}
