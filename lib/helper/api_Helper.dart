import 'dart:convert';

import 'package:api_call/modals/api_modal.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();

  final String api = 'https://valorant-api.com/v1/agents';

  get() async {
    // http.get(Uri.parse(api));
    http.Response response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List alldata = data['data'] ?? [];
      List<ApiModal> allData =
          alldata.map((e) => ApiModal.fromMap(data: e)).toList();
      return allData;
    }
  }
}
