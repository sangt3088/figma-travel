import 'package:flutter/material.dart';
import 'package:travel_figma_class/pages/signup_signin/start1_travel.dart';

class BeginTravel extends StatelessWidget {
  const BeginTravel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 204, 166, 1.0),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Start1Travel(), // Thay thế "SeeMoreSinger" bằng tên trang bạn muốn chuyển hướng đến
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.only(left: 300),
              height: 820,
              width: 400,
              decoration: BoxDecoration(
                  // color: Colors.yellow,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/Splash.png"))),
            ),
          ),
        ],
      ),
    );
  }
}
