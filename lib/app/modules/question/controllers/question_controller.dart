import 'dart:convert';

import 'package:cresign/app/data/models/question_mode.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class QuestionController extends GetxController {


  var noQuestion = 0.obs;

  var selectedOption = ''.obs;

  void setSelectedOption(String option) {
    selectedOption.value = option;
  }

  @override
  void onClose() {
    selectedOption = ''.obs;
    super.onClose();
  }

  @override
  void dispose() {
    selectedOption = ''.obs;
    super.dispose();
  }

}
