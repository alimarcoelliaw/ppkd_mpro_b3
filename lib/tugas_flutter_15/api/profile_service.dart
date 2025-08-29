import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tugas_flutter_2/tugas_flutter_15/api/endpoint/endpoint.dart';
import 'package:tugas_flutter_2/tugas_flutter_15/model/edit_profile.dart';
import 'package:tugas_flutter_2/tugas_flutter_2/tugas_flutter_11/preference/shared_preferance.dart';

class ProfileService {
  static Future<EditProfile> getProfile() async {
    final url = Uri.parse(Endpoint.profile);
    final token = await PreferenceHandler.getToken();

    final response = await http.get(
      url,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      },
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final json = jsonDecode(response.body);
      return EditProfile.fromJson(json);
    } else {
      throw Exception(
        "Gagal Mengambil Data (${response.statusCode}): ${response.body}",
      );
    }
  }

  static Future<EditProfile> updateData({
    required String name,
    required String email,
  }) async {
    final url = Uri.parse(Endpoint.profile);
    final token = await PreferenceHandler.getToken();

    final bodyMap = {"name": name, "email": email};

    final response = await http.put(
      url,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      },
      body: jsonEncode(bodyMap),
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      try {
        final json = jsonDecode(response.body);
        return EditProfile.fromJson(json);
      } catch (_) {
        return await getProfile();
      }
    } else {
      return await getProfile();
    }
    // } else {
    //   throw Exception(
    //     "Gagal Update Data (${response.statusCode}): ${response.body}",
    // );
  }
}
