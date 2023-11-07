import 'package:flutter/material.dart';
import 'package:travel_figma_class/pages/signup_signin/signup_travel.dart';
import 'package:travel_figma_class/widgets/big_text.dart';
import 'package:travel_figma_class/widgets/small_text.dart';

class Start3Travel extends StatelessWidget {
  const Start3Travel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 70, right: 20),
        child: Column(
          children: [
            Container(
              height: 430,
              decoration: BoxDecoration(
                  // color: Colors.yellow,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/image/Group177.png"))),
            ),
            SizedBox(
              height: 20,
            ),
            BigText(text: "Create a trip and get offers"),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 250,
              child: SmallText(
                  text:
                      "Fellow4U helps you save time and get offers from hundred local guides that suit your trip."),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SignupTravel(), // Thay thế "SeeMoreSinger" bằng tên trang bạn muốn chuyển hướng đến
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.only(left: 100, top: 10),
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 204, 166, 1.0),
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
