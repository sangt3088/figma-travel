import 'package:flutter/material.dart';
import 'package:travel_figma_class/widgets/big_text.dart';
import 'package:travel_figma_class/widgets/small_text.dart';

class HeaderTravelPage extends StatefulWidget {
  const HeaderTravelPage({Key? key}) : super(key: key);

  @override
  _HeaderTravelPageState createState() => _HeaderTravelPageState();
}

class _HeaderTravelPageState extends State<HeaderTravelPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 190,
          // color: Colors.red,
          child: Stack(children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/main.png"))),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(left: 30, right: 22),
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 45),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                SmallText(
                                  text: "da nang",
                                  size: 15,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: BigText(
                              text: "Explore",
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.cloud_queue_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                BigText(
                                  text: "26°C",
                                  size: 30,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
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
                              .withOpacity(1), // Màu và độ trong suốt của bóng
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
        )
      ],
    );
  }
}
