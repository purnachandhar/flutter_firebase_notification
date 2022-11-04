import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:teacher/constrains/firebase.dart';
import 'package:teacher/controllers/hom_controller.dart';
import 'package:teacher/views/home/home.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialization;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

