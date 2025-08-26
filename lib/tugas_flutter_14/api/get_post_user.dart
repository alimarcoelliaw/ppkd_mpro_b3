import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tugas_flutter_2/tugas_flutter_14/model/post_user_model.dart';
// import 'package:ppkd_b_3/day_23/model/user_model.dart';

Future<List<Welcome>> getUser() async {
  final response = await http.get(
    Uri.parse("https://jsonplaceholder.typicode.com/posts"),
  );
  print(response.body);
  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    return userJson.map((json) => Welcome.fromJson(json)).toList();
  } else {
    throw Exception("Gagal memuat data");
  }
}
