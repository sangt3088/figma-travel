import 'package:flutter/material.dart';
import 'package:travel_figma_class/pages/home/main_travel_page.dart';
import 'package:travel_figma_class/pages/signup_signin/forgot_password.dart';
import 'package:travel_figma_class/pages/signup_signin/signup_travel.dart';
import 'package:travel_figma_class/utils/colors.dart';
import 'package:travel_figma_class/widgets/app_icon.dart';

class LoginTravel extends StatefulWidget {
  const LoginTravel({Key? key}) : super(key: key);

  @override
  State<LoginTravel> createState() => _LoginTravelState();
}

class _LoginTravelState extends State<LoginTravel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  int _gioiTinh = 0;

  void setGioiTinh(Object? value) {
    setState(() {
      _gioiTinh = int.parse(value.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50, right: 300),
              height: 200,
              width: 400,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 204, 166, 1.0),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        // color: Colors.yellow,
                        image: DecorationImage(
                            image: AssetImage("assets/image/logo1.png"))),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 130, 0, 0),
              width: 500,
              height: 700,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                      child: Text("Sign In",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ))),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 5, top: 20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Welcome back, Yoo Jin",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(0, 204, 166, 1.0),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Email",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                              ),
                              controller: emailController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return ("Vui lòng nhập Email");
                                }
                                if (!RegExp(
                                        "^[a-zA-Z0-9+_.-]+@[a-z0-9A-Z.-]+.[a-z]")
                                    .hasMatch(value)) {
                                  return ("Vui lòng nhập Email hợp lệ");
                                }
                                return null;
                              },
                              onSaved: (value) {
                                emailController.text = value!;
                              }),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Password",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                            ),
                            controller: passwordController,
                            validator: (value) {
                              RegExp regex = RegExp(r".{6,}$");
                              if (value!.isEmpty) {
                                return ('Mật khẩu bắt buộc để đăng nhập');
                              }
                              if (!regex.hasMatch(value)) {
                                return ("Mật khẩu không hợp lệ");
                              }
                              return null;
                            },
                            onSaved: (value) {
                              passwordController.text = value!;
                            },
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ForgotPassword(), // Thay thế "SeeMoreSinger" bằng tên trang bạn muốn chuyển hướng đến
                                ),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Forgot Password"),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
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
                            child: Container(
                              padding: EdgeInsets.only(left: 130, top: 10),
                              height: 50,
                              width: 320,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 204, 166, 1.0),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 75, right: 75, top: 10, bottom: 60),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("or sign in with"),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                      // color: Color.fromARGB(255, 81, 194, 66),
                                      ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AppIcon(
                                        icon: Icons.facebook_outlined,
                                        backgroudColor: Colors.blue,
                                        iconColor: Colors.white,
                                      ),
                                      AppIcon(
                                        icon: Icons.message,
                                        backgroudColor: Colors.yellow,
                                        iconColor: Colors.black,
                                      ),
                                      AppIcon(
                                        icon: Icons.message,
                                        backgroudColor: Colors.green,
                                        iconColor: Colors.white,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don’t have an account? "),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignupTravel(),
                                      ));
                                },
                                child: Text(" Sign Up",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(0, 204, 166, 1.0))),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
