import 'package:flutter_resume_template/flutter_resume_template.dart';
import 'package:get/get.dart';

class ResumePageController extends GetxController {
  TemplateData? userData;
  @override
  void onInit() {
    super.onInit();
    userData = Get.arguments['userData'];
  }
}
