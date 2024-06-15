import 'package:flutter/material.dart';
import 'package:flutter_resume_template/flutter_resume_template.dart';
import 'package:get/get.dart';
import 'package:knovator_interview_task/controller/resume_page_controller.dart';
import 'package:knovator_interview_task/utils/constants/color_const.dart';
import 'package:knovator_interview_task/utils/text.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    late TemplateTheme theme = TemplateTheme.technical;
    return Scaffold(
      appBar: AppBar(
        title: text(
          'Resume',
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: whiteClr,
        ),
      ),
      body: GetBuilder(
        init: ResumePageController(),
        builder: (controller) => Center(
          child: FlutterResumeTemplate(
            data: controller.userData,
            imageHeight: 100,
            imageWidth: 100,
            emailPlaceHolder: 'Email:',
            telPlaceHolder: 'No:',
            experiencePlaceHolder: 'Past',
            languagePlaceHolder: 'Skills',
            aboutMePlaceholder: 'Me',
            hobbiesPlaceholder: 'Past Times',
            mode: TemplateMode.shakeEditAndSaveMode,
            showButtons: true,
            imageBoxFit: BoxFit.fitHeight,
            enableDivider: false,
            backgroundColorLeftSection: amberClr,
            templateTheme: theme,
          ),
        ),
      ),
    );
  }
}
