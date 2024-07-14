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
          )

        ],
      ),
    ),
  );
 }
 }