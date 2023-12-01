import 'package:cresign/app/controllers/authentication_controller.dart';
import 'package:cresign/app/controllers/data_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(DataController(), permanent: true);
  Get.put(AuthenticationController(), permanent: true);
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  final AuthC = Get.find<AuthenticationController>();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}


