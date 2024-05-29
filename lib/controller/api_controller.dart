import 'dart:developer';

import 'package:api_call/modals/api_modal.dart';
import 'package:flutter/material.dart';

import '../helper/api_Helper.dart';

class ApiController extends ChangeNotifier {
  List<ApiModal> alldata = [];

  ControllerApi() async {
    log("Getting data...");
    alldata = await ApiHelper.apiHelper.get() ?? [];
    log("DATA: $alldata");
    notifyListeners();
  }

  ApiController() {
    ControllerApi();
  }
}
