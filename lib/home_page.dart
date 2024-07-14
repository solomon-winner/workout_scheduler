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
        child: Column(
          children: [
            Row(
              children: [
            Text(
              "Training",
              style: TextStyle(
                fontSize: 30,
                color: color.AppColor.homePageTitle
              ),
            )                
           ],
          )

        ],
      ),
    ),
  );
 }
 }