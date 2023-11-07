import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travel_figma_class/pages/seeMoreHome/see_more_singer.dart';
import 'package:travel_figma_class/pages/seeMoreHome/see_more_travel.dart';
import 'package:travel_figma_class/utils/colors.dart';
import 'package:travel_figma_class/widgets/big_text.dart';
import 'package:travel_figma_class/widgets/medium_text.dart';
import 'package:travel_figma_class/widgets/small_text.dart';

class BodyTravelPage extends StatefulWidget {
  const BodyTravelPage({Key? key}) : super(key: key);

  @override
  _BodyTravelPageState createState() => _BodyTravelPageState();
}

class _BodyTravelPageState extends State<BodyTravelPage> {
  bool isVote = true;
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //buildPageItem1
        Container(
            height: 310,
            // color: Colors.blue,
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, position) {
                  return _buildPageItem1(position);
                })),

        // Text section
        SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.only(left: 25, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(
                text: "Best Guides",
              ),
              SizedBox(
                width: 110,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SeeMoreSinger(), // Thay thế "SeeMoreSinger" bằng tên trang bạn muốn chuyển hướng đến
                    ),
                  );
                },
                child: MediumText(
                  text: "See more",
                  color: AppColors.mainColor,
                ),
              )
            ],
          ),
        ),

        //listView1 Container
        Container(
          height: 390,
          child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Số cột bạn muốn hiển thị
                // crossAxisSpacing: 10,
                // mainAxisSpacing:10,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/image/image2.png"))),
                        child: Container(
                          margin:
                              EdgeInsets.only(left: 10, bottom: 10, right: 65),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  this.isVote == true
                                      ? Icon(Icons.star,
                                          color: Colors.yellow[700], size: 20)
                                      : Icon(Icons.star_border,
                                          color: Colors.yellow[700], size: 20),
                                  this.isVote == true
                                      ? Icon(Icons.star,
                                          color: Colors.yellow[700], size: 20)
                                      : Icon(Icons.star_border,
                                          color: Colors.yellow[700], size: 20),
                                  this.isVote == true
                                      ? Icon(Icons.star,
                                          color: Colors.yellow[700], size: 20)
                                      : Icon(Icons.star_border,
                                          color: Colors.yellow[700], size: 20),
                                  this.isVote == true
                                      ? Icon(Icons.star,
                                          color: Colors.yellow[700], size: 20)
                                      : Icon(Icons.star_border,
                                          color: Colors.yellow[700], size: 20),
                                  this.isVote == true
                                      ? Icon(Icons.star,
                                          color: Colors.yellow[700], size: 20)
                                      : Icon(Icons.star_border,
                                          color: Colors.yellow[700], size: 20),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              SmallText(
                                text: "127 Review",
                                color: Colors.white,
                                size: 10,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 500,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tuan Tran",
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 15,
                                      color: AppColors.mainColor,
                                    ),
                                    Text(
                                      "Da Nang,  Viet Nam",
                                      style: TextStyle(
                                          color: AppColors.mainColor,
                                          fontSize: 10),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),

        //Text section
        SizedBox(
          height: 25,
        ),
        Container(
            padding: EdgeInsets.only(left: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BigText(text: "Top Experiences"),
              ],
            )),

        //buildPageItem2
        Container(
            height: 430,
            // color: Colors.blue,
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, position) {
                  return _buildPageItem2(position);
                })),

        //text container
        SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.only(left: 25, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(
                text: "Featured Tours",
              ),
              SizedBox(
                width: 80,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SeeMoreTravel(), // Thay thế "SeeMoreSinger" bằng tên trang bạn muốn chuyển hướng đến
                    ),
                  );
                },
                child: MediumText(
                  text: "See more",
                  color: AppColors.mainColor,
                ),
              )
            ],
          ),
        ),

        // listView2 Container
        Container(
          height: 800,
          // color: Colors.yellow,
          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          color: Colors.red,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image/travel4.png"))),
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 10, bottom: 10, right: 10, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.bookmark_outline_rounded,
                              color: Colors.white,
                            ),
                            Row(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    this.isVote == true
                                        ? Icon(Icons.star,
                                            color: Colors.yellow[700], size: 20)
                                        : Icon(Icons.star_border,
                                            color: Colors.yellow[700],
                                            size: 20),
                                    this.isVote == true
                                        ? Icon(Icons.star,
                                            color: Colors.yellow[700], size: 20)
                                        : Icon(Icons.star_border,
                                            color: Colors.yellow[700],
                                            size: 20),
                                    this.isVote == true
                                        ? Icon(Icons.star,
                                            color: Colors.yellow[700], size: 20)
                                        : Icon(Icons.star_border,
                                            color: Colors.yellow[700],
                                            size: 20),
                                    this.isVote == true
                                        ? Icon(Icons.star,
                                            color: Colors.yellow[700], size: 20)
                                        : Icon(Icons.star_border,
                                            color: Colors.yellow[700],
                                            size: 20),
                                    this.isVote == true
                                        ? Icon(Icons.star,
                                            color: Colors.yellow[700], size: 20)
                                        : Icon(Icons.star_border,
                                            color: Colors.yellow[700],
                                            size: 20),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                SmallText(
                                  text: "127 Review",
                                  color: Colors.white,
                                  size: 10,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // text
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 203, 202, 202)
                                  .withOpacity(
                                      1), // Màu và độ trong suốt của bóng
                              blurRadius: 10.0, // Bán kính mờ
                            ),
                          ],
                          color: Colors.white),
                      child: Container(
                        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MediumText(text: "Da Nang - Ba Na - Hoi An"),
                                Icon(
                                  Icons.favorite_border,
                                  color: AppColors.mainColor,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month_outlined,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                SmallText(
                                  text: "Jan 30, 2020",
                                  size: 15,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.access_time_rounded,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SmallText(
                                        text: "3 days",
                                        size: 13,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.attach_money,
                                        color: AppColors.mainColor,
                                      ),
                                      BigText(
                                        text: "400.00",
                                        color: AppColors.mainColor,
                                        size: 18,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            // Row(
                            //   children: [
                            //     Icon(
                            //       Icons.attach_money,
                            //       color: AppColors.mainColor,
                            //     ),
                            //     BigText(
                            //       text: "400.00",
                            //       color: AppColors.mainColor,
                            //       size: 22,
                            //     )
                            //   ],
                            // )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),

        // Text
        SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(
                text: "Travel News",
              ),
              SizedBox(
                width: 80,
              ),
              MediumText(
                text: "See more",
                color: AppColors.mainColor,
              )
            ],
          ),
        ),

        // listView3 Container
        Container(
          height: 700,
          // color: Colors.yellow,
          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    // text
                    Container(
                      height: 50,
                      width: 800,
                      child: Container(
                        padding: EdgeInsets.only(right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MediumText(text: "New Destination in Danang City"),
                            Text("Feb 5, 2020")
                          ],
                        ),
                      ),
                    ),

                    //container image
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image/travel5.png"))),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPageItem1(int index) {
    return Stack(
      children: [
        Container(
          height: 165,
          margin: EdgeInsets.only(left: 10, right: 10, top: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: index.isEven ? Color(0xFF69c5df) : Color(0xFF69c5d),
              image: DecorationImage(
                fit: BoxFit.cover, // toàn hình ảnh
                image: AssetImage("assets/image/travel1.png"),
              )),
          child: Container(
            padding: EdgeInsets.only(right: 10, top: 10, left: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.bookmark_outline_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 95,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                      size: 20,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SmallText(
                      text: "1247 likes",
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter, // căn chỉnh xuống dưới
            child: Container(
              height: 145,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 203, 202, 202)
                          .withOpacity(1), // Màu và độ trong suốt của bóng
                      blurRadius: 10.0, // Bán kính mờ
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: Color.fromARGB(255, 255, 255, 255)),
              child: Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MediumText(text: "Da Nang - Ba Na - Hoi An"),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SmallText(
                          text: "Jan 30, 2020",
                          size: 15,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SmallText(
                          text: "3 days",
                          size: 15,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.attach_money,
                          color: AppColors.mainColor,
                        ),
                        BigText(
                          text: "400.00",
                          color: AppColors.mainColor,
                          size: 22,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )),
      ],
    );
  }

  Widget _buildPageItem2(int index) {
    return Stack(
      children: [
        Container(
          height: 400,
          // margin: EdgeInsets.only(left: 10, right: 10, top: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              // color: index.isEven ? Color(0xFF69c5df) : Color(0xFF69c5d),
              image: DecorationImage(
                fit: BoxFit.cover, // toàn hình ảnh
                image: AssetImage("assets/image/travel3.png"),
              )),
          child: Container(
            margin: EdgeInsets.only(top: 220, right: 120, bottom: 5),
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                // border image
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow,
                      border: Border.all(
                        color: AppColors.mainColor, // Màu viền xanh
                        width: 4.0, // Độ dày của viền
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image/image3.png"))),
                ),
                SizedBox(
                  height: 5,
                ),
                // border Text
                Container(
                  height: 28,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.mainColor),
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          "Linh Hana",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter, // căn chỉnh xuống dưới
            child: Container(
              height: 65,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MediumText(
                      text: "2 Hour Bicycle Tour exploring ",
                      size: 20,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 15,
                            color: AppColors.mainColor,
                          ),
                          Text(
                            "Hoian,  Viet Nam",
                            style: TextStyle(
                                color: AppColors.mainColor, fontSize: 10),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
