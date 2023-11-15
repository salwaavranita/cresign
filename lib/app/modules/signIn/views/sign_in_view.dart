import 'package:cresign/app/controllers/authentication_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../data/constraint/font.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  final authCon = Get.find<AuthenticationController>();
   SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF043873),
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          child: Stack(
            children: [
              ClipPath(
                clipper: MyCustomClipper(),
                child: Container(
                  height: Get.height,
                  width: Get.width,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 101, vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                              height: 37,
                              width: 48,
                              child: Image.asset("images/logo.png")),
                          Text(
                            "CreSign",
                            style: interFont.copyWith(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text("Not a member? ",
                              style: interFont.copyWith(
                                  fontSize: 18, color: Colors.black)),
                          InkWell(
                            onTap: () {},
                            child: Text("Register now",
                                style: interFont.copyWith(
                                    fontSize: 18,
                                    color: Color(0xFF043873),
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 1,
                top: 100,
                child: Container(
                    height: 550,
                    width: 550,
                    child:
                        Lottie.asset("lottie/signin.json", fit: BoxFit.cover)),
              ),
              Positioned(
                top: 100,
                right: 158,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign in to CreSign",
                      style: interFont.copyWith(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 340,
                      height: 70,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Color(0xFF0093EB),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          onPressed: ()  {
                            authCon.signInWithGoogle();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sign In with Google",
                                style: interFont.copyWith(
                                    fontSize: 24,
                                    color: Color(0xFFD6FAFF),
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 48,
                                width: 48,
                                child: Image.asset("images/google.png",
                                    fit: BoxFit.contain),
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 550,
                      height: 30,
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                            ),
                          ),
                          Text(" Or ", style: interFont.copyWith(fontSize: 20)),
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Username or email adress",
                      style: interFont.copyWith(
                          fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 70,
                      width: 550,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Color(0x335E5353).withOpacity(0.1),
                          filled: true,
                          contentPadding: EdgeInsets.all(25),
                          hintText: "Email",
                          hintStyle: interFont.copyWith(
                              fontSize: 16, color: Color(0xFF6B6E6F)),
                          border:OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Text(
                      "Password",
                      style: interFont.copyWith(
                          fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 70,
                      width: 550,
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(Icons.remove_red_eye),
                            ),
                            fillColor: Color(0x335E5353).withOpacity(0.1),
                            filled: true,
                            contentPadding: EdgeInsets.all(25),
                            hintText: "Password",
                            hintStyle: interFont.copyWith(
                                fontSize: 16, color: Color(0xFF6B6E6F)),
                            border:OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 35,),
                    InkWell(
                      onTap: () {

                      },
                      child: Container(
                        width: 285,
                        height: 70,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(-0.99, 0.10),
                            end: Alignment(0.99, -0.1),
                            colors: [Color(0xFFFF3849), Color(0xFFFF5362)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Center(child: Text("Sign IN",style: GoogleFonts.mulish(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.white),)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 2.8, size.height);
    path.lineTo(size.width / 2, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
