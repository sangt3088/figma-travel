import 'package:flutter/material.dart';
import 'package:travel_figma_class/pages/home/main_travel_page.dart';
import 'package:travel_figma_class/utils/colors.dart';
import 'package:travel_figma_class/widgets/big_text.dart';
import 'package:travel_figma_class/widgets/small_text.dart';

class SeeMoreSinger extends StatelessWidget {
  const SeeMoreSinger({Key? key}) : super(key: key);

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
                    margin: EdgeInsets.only(left: 20, right: 32),
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
                                      "Book your own private local Guide and explore the city ",
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
            height: 800,
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Số cột bạn muốn hiển thị
                  // crossAxisSpacing: 10,
                  // mainAxisSpacing:10,
                ),
                itemCount: 8,
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
                                  image:
                                      AssetImage("assets/image/image3.png"))),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 10, bottom: 10, right: 65),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
        ],
      )),
    );
  }
}
