import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:foodei/bottom_sheets/login_bottom_sheet.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Column(children: [
            SizedBox(
              height: 100,
            ),
            SvgPicture.asset("assets/login_page_background.svg"),
            SizedBox(height: 70,),
            Text("Welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
            SizedBox(height: 20,),
            Text("Before Enjoying FoodMedia Services",style: TextStyle(color: Colors.grey,fontSize: 18),),
            SizedBox(height: 5,),
            Text("Please Register First",style: TextStyle(color: Colors.grey,fontSize: 18)),
            SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 60,
                width: double.infinity,
                //color: Colors.green,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromARGB(232, 50, 163, 95)),
              child: Center(child: Text("Create Account",style: TextStyle(color: Colors.white,fontSize: 18),)),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: (){
                  showModalBottomSheet(context: context, builder: (context){
                  return LoginBottomSheet();
                  });
                },
                child: Container(
                  height: 60,
                  width: double.infinity-10,
                  //color: Colors.green,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromARGB(232, 167, 252, 201)),
                child: Center(child: Text("Login",style: TextStyle(color: Color.fromARGB(232, 50, 163, 95),fontSize: 18),)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text("By Logging In Or Registering, You Have Agreed To"),
            SizedBox(width: 4,),
            Text("Terms", style: TextStyle(color: Color.fromARGB(232, 141, 243, 182),fontWeight: FontWeight.w800),),
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text("And Conditions",style: TextStyle(color: Color.fromARGB(232, 141, 243, 182),fontWeight: FontWeight.w800),),
            SizedBox(width: 4,),
            Text("And"),
            SizedBox(width: 4,),
            Text("Privacy Policy",style: TextStyle(color: Color.fromARGB(232, 141, 243, 182),fontWeight: FontWeight.w800),),
            ],),
            ],),
          ),
          ),
        ),
      ),

    );
  }
}