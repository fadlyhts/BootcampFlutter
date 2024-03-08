import 'dart:async';
import 'package:fadlyprojekapp/State/model/postmodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Services {
  Future<List<Postmodel>?> getAllPosts() async {
    try {
      var response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"))
          .timeout(const Duration(seconds: 10), onTimeout: () {
        throw TimeoutException("connection time out try again");
      });

      if (response.statusCode == 200) {
        List jsonresponse = convert.jsonDecode(response.body);
        return jsonresponse.map((e) => new Postmodel.fromJson(e)).toList();
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }
}
