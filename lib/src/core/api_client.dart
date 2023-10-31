// ignore_for_file: empty_catches

import 'dart:convert';
import 'package:api_calling_with_bloc/src/core/unathorised_exception.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  final http.Client _client;

  ApiClient(this._client);

  dynamic get(String path, {Map<dynamic, dynamic>? params, Map<String, String>? header}) async {
    final response = await _client.get(
      Uri.parse(path),
    );

    if (response.statusCode == 200) {
      try {
        if (json.decode(response.body)['status'] == 401) {
          throw UnauthorisedException();
        }
      } on UnauthorisedException {
        throw UnauthorisedException();
      }

      return json.decode(response.body);
    } else if (response.statusCode == 401) {
      throw UnauthorisedException();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
