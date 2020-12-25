import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:covid19_app/models/api_response.dart';
import 'package:covid19_app/models/today_model.dart';

class HomeService {
  static const API = 'https://covid19.th-stat.com/api';

  Future<APIResponse<Today>> getTodayData() {
    return http.get(API + '/open/today').then((data) {
      if (data.statusCode == 200) {
        final body = utf8.decode(data.bodyBytes);
        final jsonDecode = json.decode(body);
        final response = Today.fromJson(jsonDecode);
        return APIResponse<Today>(data: response);
      } else {
        return APIResponse<Today>(
          error: true,
          errorMessage: 'An error occurred',
        );
      }
    }).catchError((_) {
      return APIResponse<Today>(
        error: true,
        errorMessage: 'An error occurred',
      );
    });
  }
}
