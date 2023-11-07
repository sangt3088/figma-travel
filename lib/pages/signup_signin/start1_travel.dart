import 'package:flutter/material.dart';
import 'package:travel_figma_class/pages/signup_signin/start2_travel.dart';
import 'package:travel_figma_class/widgets/big_text.dart';
import 'package:travel_figma_class/widgets/small_text.dart';

class Start1Travel extends StatelessWidget {
  const Start1Travel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 50),
        child: Column(
          children: [
            Container(
              height: 450,
              decoration: BoxDecoration(
                  // color: Colors.yellow,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/image/Vector7.png"))),
              child: Container(
                padding: EdgeInsets.only(left: 40, top: 100),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      height: 250,
                      width: 120,
                      decoration: BoxDecoration(
                          // color: Colors.yellow,
                          image: DecorationImage(
                              image: AssetImage("assets/image/Group108.png"))),
                    ),
                    Container(
                      height: 270,
                      width: 150,
                      decoration: BoxDecoration(
                          // color: Colors.yellow,
                          image: DecorationImage(
                              image: AssetImage("assets/image/Group107.png"))),
                    ),
                    Container(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BigText(text: "Find a local guide easily "),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 250,
              child: SmallText(
                  text:
                      "With Fellow4U, you can find a local guide for you trip easily and explore as the way you want."),
            ),
            SizedBox(
              height: 120,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Start2Travel(), // Thay thế "SeeMoreSinger" bằng tên trang bạn muốn chuyển hướng đến
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.only(left: 200),
                child: SmallText(text: "SKIP"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
