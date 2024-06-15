import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knovator_interview_task/utils/constants/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        final scale = MediaQuery.of(context).textScaler.clamp(
              minScaleFactor: 0.8,
              maxScaleFactor: 1.0,
            );
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: scale),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: true,
      initialRoute: '/homePage',
      getPages: routes,
      theme: ThemeData(
        useMaterial3: false,
      ),
    );
  }
}
