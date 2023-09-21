import 'package:flutter/material.dart';
import 'package:foodei/main.dart';
import 'package:foodei/widgets/booking_card.dart';
class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(height*0.03),bottomRight: Radius.circular(height*0.03) )),
        title: Text("Booking Details",style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Colors.green),
      body: SafeArea(child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*0.02),
        child: ListView(
          children: [
            SizedBox(height: height*0.02,),
            BookingCard(),
            SizedBox(height: height*0.01,),
            BookingCard(),
            SizedBox(height: height*0.01,),
            BookingCard(),
            SizedBox(height: height*0.01,),
            BookingCard(),
          ],
        ),
      )),
    );
  }
}