import 'package:flutter/material.dart';
import 'package:foodei/screens/login_screen.dart';
import 'package:foodei/utils/screen_tuils.dart';

late double height;
late double width;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtils.removeSystemBars();
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home:const LoginScreen()));
}
