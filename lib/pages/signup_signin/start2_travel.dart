import 'package:flutter/material.dart';
import 'package:travel_figma_class/pages/signup_signin/start3_travel.dart';
import 'package:travel_figma_class/widgets/big_text.dart';
import 'package:travel_figma_class/widgets/small_text.dart';

class Start2Travel extends StatelessWidget {
  const Start2Travel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 70, left: 0),
        child: Column(
          children: [
            Container(
              height: 470,
              decoration: BoxDecoration(
                  // color: Colors.yellow,
                  image: DecorationImage(
                      // fit: BoxFit.fill,
                      image: AssetImage("assets/image/Vector8.png"))),
              child: Container(
                padding: EdgeInsets.only(
                  left: 40,
                ),
                child: Container(
                  padding: EdgeInsets.only(bottom: 50, left: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Container(
                            // padding: EdgeInsets.only(left: 50),
                            height: 120,
                            width: 170,
                            decoration: BoxDecoration(
                                // color: Colors.yellow,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/image/Group98.png"))),
                          ),
                          Container(
                            height: 120,
                            width: 170,
                            decoration: BoxDecoration(
                                // color: Colors.yellow,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/image/Group99.png"))),
                          ),
                        ],
                      ),
                      Container(
                        height: 270,
                        width: 170,
                        decoration: BoxDecoration(
                            // color: Colors.yellow,
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/image/Group101.png"))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BigText(text: "Many tours around the world  "),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 250,
              child: SmallText(
                  text:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
            ),
            SizedBox(
              height: 90,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Start3Travel(), // Thay thế "SeeMoreSinger" bằng tên trang bạn muốn chuyển hướng đến
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.only(left: 250),
                child: SmallText(text: "SKIP"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
