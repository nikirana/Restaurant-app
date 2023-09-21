import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodei/main.dart';
import 'package:foodei/screens/history_screen.dart';
import 'package:foodei/screens/home_screen.dart';
class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  List<Widget>screens=[
    HomeScreen(),
    BookingScreen(),
    HomeScreen(),
  ];
  int page=0;
  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: screens[page],
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          GestureDetector(
            onTap: (){
              page=0;
              setState(() {
                
              });
            },
            child: SvgPicture.asset("assets/icons/${page!=0?"home_icon":"selected_home"}.svg")),
          GestureDetector(
            onTap: (){
            page=1;
            setState(() {
              
            });
            },
            child: SvgPicture.asset("assets/icons/${page!=1?"history_icon":"selected_history"}.svg")),
          GestureDetector(
            onTap: (){
            page=2;
            setState(() {
              
            });
            },
            child: SvgPicture.asset("assets/icons/${page!=2?"user_icon":"selected_person"}.svg")),
        ],),
        height: height*0.07,
        decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 3,
            blurRadius: 2
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(height*0.03),topRight:Radius.circular(height*0.03) )
        ),
      ),
    );
  }
}