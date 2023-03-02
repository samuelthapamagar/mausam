import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHepler {
  NetworkHepler(this.url);
  final url;

  getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print('Status Code : ${response.statusCode}');
    }
  }
}
