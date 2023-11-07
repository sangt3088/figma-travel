import 'package:flutter/material.dart';
import 'package:travel_figma_class/pages/home/body_travel_page.dart';
import 'package:travel_figma_class/pages/home/header_travel_page.dart';
import 'package:travel_figma_class/widgets/big_text.dart';


class MainTravelPage extends StatefulWidget {
  const MainTravelPage({Key? key}) : super(key: key);

  @override
  _MainTravelPageState createState() => _MainTravelPageState();
}

class _MainTravelPageState extends State<MainTravelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //  scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            HeaderTravelPage(),

            // Text
            Container(
              padding: EdgeInsets.only(left: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BigText(
                    text: "Top Journeys",
                  ),
                ],
              ),
            ),

            BodyTravelPage()
          ],
        ),
      ),
    );
  }
}
