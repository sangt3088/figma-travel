import 'package:flutter/material.dart';
import 'package:travel_figma_class/pages/home/main_travel_page.dart';
import 'package:travel_figma_class/utils/colors.dart';
import 'package:travel_figma_class/widgets/big_text.dart';
import 'package:travel_figma_class/widgets/medium_text.dart';
import 'package:travel_figma_class/widgets/small_text.dart';

class SeeMoreTravel extends StatelessWidget {
  const SeeMoreTravel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          // header see more
          Container(
            height: 250,
            // color: Colors.red,
            child: Stack(children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/travel2.png"))),
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 22),
                    padding: EdgeInsets.only(bottom: 10, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 40,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MainTravelPage(), // Thay thế "SeeMoreSinger" bằng tên trang bạn muốn chuyển hướng đến
                                        ),
                                      );
                                    },
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: BigText(
                                  text:
                                      "Plenty of amazing of tours are waiting for you",
                                  size: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 35,
                    margin: EdgeInsets.only(left: 30, right: 30, bottom: 35),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 203, 202, 202)
                                .withOpacity(
                                    1), // Màu và độ trong suốt của bóng
                            blurRadius: 10.0, // Bán kính mờ
                          ),
                        ],
                        // border: Border.all(
                        //   color: Colors.black, // Màu của đường viền
                        //   width: 2.0, // Độ dày của đường viền
                        // ),
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText:
                            'Hi, Where do you want to explore ?', // Văn bản gợi ý trong ô tìm kiếm
                        border: InputBorder.none, // Ẩn đường viền của TextField
                        icon: Icon(Icons.search), // Icon tìm kiếm
                      ),
                      // Các xử lý tìm kiếm và onChanged có thể được thêm vào đây
                    ),
                  ))
            ]),
          ),

          //item see more
          Container(
            height: 1700,
            // color: Colors.yellow,
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
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
                                image: AssetImage("assets/image/travel6.png"))),
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
                          padding:
                              EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
        ],
      )),
    );
  }
}
