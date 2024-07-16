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
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            _buildHeaderRow(),
            SizedBox(height: 30),
            _buildSubtitleRow(),
            SizedBox(height: 20),
            _buildWorkoutCard(context),
             SizedBox(height: 5),
            _buildOverlapingCard(context),
          ],
        ),
      ),
    );
  }

  Row _buildHeaderRow() {
    return Row(
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
        _buildIconRow(),
      ],
    );
  }

  Row _buildIconRow() {
    return Row(
      children: [
        Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: color.AppColor.homePageIcons,
        ), 
        SizedBox(width: 10),
        Icon(
          Icons.calendar_month_outlined,
          size: 20,
          color: color.AppColor.homePageIcons,
        ),
        SizedBox(width: 15),
        Icon(
          Icons.arrow_forward_ios,
          size: 20,
          color: color.AppColor.homePageIcons,
        ),
      ],
    );
  }

  Row _buildSubtitleRow() {
    return Row(
      children: [
        Text(
          "Your Program",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: color.AppColor.homePageSubtitle,
          ),
        ),
        Expanded(child: Container()),
        Text(
          "Details",
          style: TextStyle(
            fontSize: 20,
            color: color.AppColor.homePageDetail,
          ),
        ),
        SizedBox(width: 5),
        Icon(
          Icons.arrow_forward,
          size: 20,
          color: color.AppColor.homePageIcons,
        ),
      ],
    );
  }

  Container _buildWorkoutCard(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 220,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.AppColor.gradientFirst.withOpacity(0.8),
            color.AppColor.gradientSecond.withOpacity(0.9),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.only(
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
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
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
            SizedBox(height: 5),
            Text(
              "Legs Toning",
              style: TextStyle(
                fontSize: 25,
                color: color.AppColor.homePageContainerTextSmall,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "and Glutes workout",
              style: TextStyle(
                fontSize: 25,
                color: color.AppColor.homePageContainerTextSmall,
              ),
            ),
            SizedBox(height: 25),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.timer,
                      size: 20,
                      color: color.AppColor.homePageContainerTextSmall,
                    ),
                    SizedBox(width: 10),
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    boxShadow: [
                      BoxShadow(
                        color: color.AppColor.gradientFirst,
                        blurRadius: 10,
                        offset: Offset(4, 8)
                      )
                    ]
                  ),
                  child: Icon(
                    Icons.play_circle_fill,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _buildOverlapingCard(BuildContext context) {
    
    return Container(
      width: MediaQuery.of(context).size.width,
      height:180,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
      width: MediaQuery.of(context).size.width,
      height:120,    
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
        image: AssetImage("assets/card.jpg"),
         fit: BoxFit.fill
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 40,
              offset: Offset(8, 10),
              color: color.AppColor.gradientSecond.withOpacity(0.3)
            ),
             BoxShadow(
              blurRadius: 10,
              offset: Offset(-1, -5),
              color: color.AppColor.gradientSecond.withOpacity(0.3)
            ),   
          ]
      ),    
          )
          ,Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(right: 200, bottom: 30),
          decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
        image: AssetImage("assets/figure.png"),
          ),

      ),
          ),
          Container (
            width: double.maxFinite,
            height: 100,
            color: Colors.redAccent.withOpacity(0.3),
          )
        ],
      ),
      
      
    );
  }
}
