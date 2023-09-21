import 'package:flutter/material.dart';
import 'package:foodei/payment_screen.dart';
import 'package:foodei/screens/change_password_screen.dart';
import 'package:foodei/screens/email_verification_screen.dart';
import 'package:foodei/screens/forget_password_screen.dart';
import 'package:foodei/screens/home_screen.dart';
import 'package:foodei/screens/layout_screen.dart';
import 'package:foodei/screens/login_screen.dart';
import 'package:foodei/screens/onboarding_screen.dart';
import 'package:foodei/screens/onboarding_screens/onboarding_first_screen.dart';
import 'package:foodei/utils/screen_tuils.dart';
import 'package:http/http.dart' as http;
late double height;
late double width;
//https://sandbox.cashfree.com/pg

initiatePayment()async{
final res=await http.post(
  Uri.parse("https://sandbox.cashfree.com/pg"),
);
}

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtils.removeSystemBars();
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      
      home:PaymentScreen()
      //LoginScreen(),
      ));
}
