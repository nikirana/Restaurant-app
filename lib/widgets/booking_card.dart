import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodei/main.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      width: width*0.8,
      height: height * 0.13,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(height * 0.02),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 1
          )
        ]
      ),
      child: Padding(
        padding: EdgeInsets.all(width * 0.025),
        child: Row(
          children: [
            Container(
              height: height * 0.1,
              width: height * 0.1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(height * 0.018),
                child: Image.asset(
                  "assets/biryani.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: width*0.02,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hotel Zaman Restaurant",style: TextStyle(fontSize: height*0.020,fontWeight: FontWeight.w600),),
                SizedBox(height: height*0.01,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      FontAwesomeIcons.locationDot,
                      color: Colors.green,
                      size: height * 0.02,
                    ),
                    SizedBox(height: height*0.02,
                    child: Text.rich(TextSpan(
                      
                    )),
                    ),
                    Column(children: [
                      Text("Kazi Deiry, Taiger Pass",style: TextStyle(color: Colors.grey),),
                      Text("Chittagong",style: TextStyle(color: Colors.grey),),
                    ],),
                    
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: width*0.02,).copyWith(top: height*0.025),
                      child: SizedBox(
                        height: height*0.03,
                        width: width*0.2,
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Center(child: Text("Check",style: TextStyle(color: Colors.white),),)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
