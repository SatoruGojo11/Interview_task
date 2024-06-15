import 'package:get/get.dart';
import 'package:knovator_interview_task/view/home_page.dart';
import 'package:knovator_interview_task/view/resume_page.dart';

List<GetPage> routes = <GetPage>[
  GetPage(
    name: '/homePage',
    page: () => const HomePage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/resumePage',
    page: () => const ResumePage(),
    transition: Transition.rightToLeft,
  ),
];
