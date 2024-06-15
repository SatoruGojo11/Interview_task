import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knovator_interview_task/controller/home_page_controller.dart';
import 'package:knovator_interview_task/utils/constants/color_const.dart';
import 'package:knovator_interview_task/utils/text.dart';
import 'package:knovator_interview_task/utils/text_form_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: text(
          'Create your Resume',
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: whiteClr,
        ),
      ),
      body: GetBuilder(
        init: HomePageController(),
        builder: (controller) => Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Form(
              key: controller.validationkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  userInputWidget(
                    inputFieldName: 'Enter Full Name',
                    inputFieldController: controller.usernamecontroller,
                    validationText: "Please Enter your name",
                  ),
                  userInputWidget(
                    inputFieldName: 'Enter Your Email-id',
                    inputFieldController: controller.emailcontroller,
                    validationText: "Please Enter your email",
                    keyboardtype: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter your Email-id";
                      } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return "Please Enter valid Email-id";
                      }
                      return null;
                    },
                  ),
                  userInputWidget(
                    inputFieldName: 'Enter Your Phone No.',
                    inputFieldController: controller.phonecontroller,
                    validationText: "Please Enter your number",
                    maxLength: 10,
                    keyboardtype: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter your Phone-no.";
                      } else if (value.length < 10) {
                        return "Please Enter valid Phone-no.";
                      }
                      return null;
                    },
                  ),
                  userInputWidget(
                    inputFieldName: 'Enter Your Current Position',
                    inputFieldController: controller.currentPositionController,
                    validationText: "Please Enter your current Position",
                  ),
                  userInputWidget(
                    inputFieldName: 'Enter Your Address',
                    inputFieldController: controller.addressController,
                    validationText: "Please Enter your address",
                  ),
                  userInputWidget(
                    inputFieldName: 'Enter Your Country',
                    inputFieldController: controller.countryController,
                    validationText: "Please Enter your country",
                  ),
                  userInputWidget(
                    inputFieldName: 'Enter your Bio',
                    inputFieldController: controller.userBioController,
                    validationText: "Please Enter your bio",
                    keyboardtype: TextInputType.multiline,
                    maxLine: 6,
                  ),
                  userInputWidget(
                    inputFieldName: 'Enter Your Degree',
                    inputFieldController: controller.degreeController,
                    validationText: "Please Enter your degree",
                  ),
                  userInputWidget(
                    inputFieldName: 'Enter Your College Name',
                    inputFieldController: controller.collegeNamecontroller,
                    validationText: "Please Enter your college Name",
                  ),
                  userInputWidget(
                    inputFieldName: 'Enter Your Comfortable Language',
                    inputFieldController: controller.languagecontroller,
                    validationText: "Please Enter your language",
                  ),
                  userInputWidget(
                    inputFieldName: 'Rate Your Language',
                    inputFieldController: controller.ratingcontroller,
                    validationText: "Please Enter rating of your language",
                  ),
                  userInputWidget(
                    inputFieldName: 'Enter your Hobbies',
                    inputFieldController: controller.hobbiescontroller,
                    validationText: "Please Enter hobbies",
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () => controller.saveButtonClicked(),
                      child: text(
                        'Save',
                        color: whiteClr,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget userInputWidget({
  String? inputFieldName,
  String? validationText,
  int? maxLine,
  TextEditingController? inputFieldController,
  TextInputType? keyboardtype,
  String? Function(String?)? validator,
  int? maxLength,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              text(
                inputFieldName ?? '',
                fontWeight: FontWeight.bold,
              ),
              text(' *', color: redClr),
            ],
          ),
        ),
        textformfield(
          maxLength: maxLength,
          inputFieldController ?? TextEditingController(),
          hinttxt: inputFieldName ?? '',
          keyboardtype: keyboardtype ?? TextInputType.name,
          maxLines: maxLine,
          validator: validator ??
              (value) {
                if (value == null || value.isEmpty) {
                  return validationText ?? '';
                }
                return null;
              },
        ),
      ],
    ),
  );
}
