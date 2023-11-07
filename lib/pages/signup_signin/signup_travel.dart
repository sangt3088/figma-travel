import 'package:flutter/material.dart';
import 'package:travel_figma_class/pages/signup_signin/login_travel.dart';

class SignupTravel extends StatefulWidget {
  const SignupTravel({Key? key}) : super(key: key);

  @override
  State<SignupTravel> createState() => _SignupTravelState();
}

class _SignupTravelState extends State<SignupTravel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController addressController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmpasswordController =
      TextEditingController();

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
              height: 950,
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
                      child: Text("Sign Up",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ))),
                  Row(
                    children: [
                      Flexible(
                        child: ListTile(
                          title: Text('Traveler'),
                          leading: Radio(
                              value: 0,
                              groupValue: _gioiTinh,
                              onChanged: setGioiTinh),
                        ),
                      ),
                      Flexible(
                        child: ListTile(
                          title: Text('Guide'),
                          leading: Radio(
                              value: 1,
                              groupValue: _gioiTinh,
                              onChanged: setGioiTinh),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 5, top: 30),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 60),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "First Name",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Last Name",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Yoo',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              Flexible(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Jin',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Country",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Country',
                              ),
                              controller: addressController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return ("Vui lòng nhập Address");
                                }
                              },
                              onSaved: (value) {
                                addressController.text = value!;
                              }),
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
                          const Text(
                            "Password has more than 6 letter",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Confirm Password",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Confirm Password',
                            ),
                            controller: confirmpasswordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ('Mật khẩu bắt buộc để đăng nhập');
                              }
                              if (passwordController.text !=
                                  confirmpasswordController.text) {
                                return ("Mật khẩu không trùng khớp");
                              }

                              return null;
                            },
                            onSaved: (value) {
                              confirmpasswordController.text = value!;
                            },
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("By Signing Up, you agree to our"),
                              Text(" Terms & Conditions",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(0, 204, 166, 1.0))),
                            ],
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
                                      LoginTravel(), // Thay thế "SeeMoreSinger" bằng tên trang bạn muốn chuyển hướng đến
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
                                "Sign Up",
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account?"),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          LoginTravel(), // Thay thế "SeeMoreSinger" bằng tên trang bạn muốn chuyển hướng đến
                                    ),
                                  );
                                },
                                child: Text(" Sign In",
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
