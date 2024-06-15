import 'package:flutter/material.dart';
import 'package:flutter_resume_template/flutter_resume_template.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  late TemplateData data;
  List<String> hobbbies = [];
  final validationkey = GlobalKey<FormState>();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController currentPositionController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController userBioController = TextEditingController();
  TextEditingController degreeController = TextEditingController();
  TextEditingController collegeNamecontroller = TextEditingController();
  TextEditingController languagecontroller = TextEditingController();
  TextEditingController ratingcontroller = TextEditingController();
  TextEditingController hobbiescontroller = TextEditingController();

  void saveButtonClicked() {
    if (validationkey.currentState!.validate()) {
      hobbbies.addAll(hobbiescontroller.value.text.split(','));
      createData();
      Get.toNamed('/resumePage', arguments: {
        'userData': data,
      });
    }
    update();
  }

  void createData() {
    data = TemplateData(
      fullName: userBioController.value.text,
      currentPosition: currentPositionController.value.text,
      address: addressController.value.text,
      country: countryController.value.text,
      email: emailcontroller.value.text,
      phoneNumber: phonecontroller.value.text,
      bio: userBioController.value.text,
      experience: [],
      educationDetails: [
        Education(
          degreeController.value.text,
          collegeNamecontroller.value.text,
        ),
      ],
      languages: [
        Language(
          languagecontroller.value.text,
          int.parse(ratingcontroller.value.text),
        ),
      ],
      hobbies: hobbbies,
    );
  }
}
