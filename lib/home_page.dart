import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top:70, left:30,right: 30),
        child: Column(
          children: [
            Row(
              children: [
            Text(
              "Training",
              style: TextStyle(
                fontSize: 30,
                color: color.AppColor.homePageTitle,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(child: Container()),
             Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                SizedBox(width:10),
                Icon(Icons.calendar_month_outlined,
                size: 20,
                color: color.AppColor.homePageIcons,
                ),
                SizedBox(width: 15,),
                Icon(Icons.arrow_forward_ios,
                size: 20,
                color: color.AppColor.homePageIcons,
                )
              ],
            ),
                           
           ],
          ),
           SizedBox(height: 30,),
            Row(
          children: [
            Text(
             style: TextStyle(
              fontWeight:FontWeight.w700,
              fontSize: 20,
              color: color.AppColor.homePageSubtitle,
              ),
              "Your Program",
 
            ),
            Expanded(child: Container()),
            Text(
              "Details",
              style: TextStyle(
                fontSize: 20,
                color: color.AppColor.homePageDetail,

              ),
            ),
            SizedBox(width: 5,),
            Icon(Icons.arrow_forward,
            size: 20,
            color: color.AppColor.homePageIcons,)
          ],
        ),
           SizedBox(height: 20,),
           Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color.AppColor.gradientFirst.withOpacity(0.8),
                  color.AppColor.gradientSecond.withOpacity(0.9),
                ],
              begin:Alignment.bottomLeft,
              end: Alignment.centerRight
              ),
              borderRadius:  BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(80),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(5, 10),
                  blurRadius: 10,
                  color: color.AppColor.gradientSecond.withOpacity(0.2),
                )
              ]
              ),
           child: Container(
            padding: const EdgeInsets.only(
              left: 20,
              top: 25,
              right: 20
               ),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Next Workout",
                  style: TextStyle(
                    fontSize: 16,
                    color: color.AppColor.homePageContainerTextSmall,
                  ),
                ),
                SizedBox(height: 5,),
                 Text(
                  "Legs Toning",
                  style: TextStyle(
                    fontSize: 25,
                    color: color.AppColor.homePageContainerTextSmall,
                  ),
                ),
                SizedBox(height: 5,),
                 Text(
                  "and Glutes workout",
                  style: TextStyle(
                    fontSize: 25,
                    color: color.AppColor.homePageContainerTextSmall,
                  ),
                ),
                SizedBox(height: 25,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end, 
                  children: [
                   Row(
                      children:[
                        Icon(Icons.timer,
                        size:20,
                        color: color.AppColor.homePageContainerTextSmall),
                     SizedBox(width: 10,),

                 Text(
                  "60min",
                  style: TextStyle(
                    fontSize: 14,
                    color: color.AppColor.homePageContainerTextSmall,
                  ),
                ),      
                ],
                  ),
                   Expanded(child: Container()),
                   Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                  size: 60,
                ),
                ],
                )
              ],
             ),
           ),
           )
        ],
      ),
    ),
  );
 }
 }