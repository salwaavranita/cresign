import 'package:cresign/app/controllers/authentication_controller.dart';
import 'package:cresign/app/controllers/data_controller.dart';
import 'package:cresign/app/data/constraint/font.dart';
import 'package:cresign/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../../../data/widgets/footer_website.dart';
import '../../../data/widgets/navbar_website.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final dataCon = Get.find<DataController>();


  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF043873),
      body: SafeArea(
        child: Column(
          children: [
            navbar(),
            Expanded(
              child: SingleChildScrollView(
                controller: dataCon.scrollController,
                child: Column(
                  children: [
                    Container(
                      height: 800,
                      color: Color(0xFF043873),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            right: 100,
                            bottom: 220,
                            child: Container(
                                width: 650,
                                height: 550,
                                child: Lottie.asset("assets/lottie/lottie1.json",
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            left: 205,
                            top: 70,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "CreSign",
                                  style: interFont.copyWith(
                                      fontSize: 96,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 41,
                                ),
                                Container(
                                    width: 503,
                                    child: Text(
                                      "Pembelajaran Recreate Design berbasis Website",
                                      style: interFont.copyWith(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    )),
                                SizedBox(
                                  height: 42,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 211,
                                    height: 50,
                                    decoration: ShapeDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(-1.00, 0.05),
                                        end: Alignment(1, -0.05),
                                        colors: [
                                          Color(0xFF686DE0),
                                          Color(0xFF4834D4)
                                        ],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      shadows: [
                                        BoxShadow(
                                          color: Color(0x7F686DE0),
                                          blurRadius: 20,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Explore More",
                                      style: interFont.copyWith(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 100,
                            bottom: 620,
                            child: Container(
                                height: 260,
                                width: 140,
                                child: Image.asset(
                                  "assets/images/background-element2.png",
                                  fit: BoxFit.contain,
                                )),
                          ),
                          Positioned(
                            left: 100,
                            bottom: 420,
                            child: Container(
                                height: 250,
                                width: 59,
                                child: Image.asset(
                                  "assets/images/background-element8.png",
                                  fit: BoxFit.contain,
                                )),
                          ),
                          Positioned(
                            bottom: 740,
                            left: 420,
                            child: Container(
                                height: 150,
                                width: 150,
                                child: Image.asset(
                                  "assets/images/background-element3.png",
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Positioned(
                            bottom: 720,
                            right: 287,
                            child: Container(
                                height: 62,
                                width: 87,
                                child: Image.asset(
                                  "assets/images/background-element1.png",
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Positioned(
                            bottom: 220,
                            left: 200,
                            child: Container(
                              height: 40,
                              width: 470,
                              child: Image.asset(
                                "assets/images/element1.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 50,
                            left: 300,
                            child: Container(
                                height: 130,
                                width: 160,
                                child: Image.asset(
                                  "assets/images/background-element1.png",
                                  fit: BoxFit.contain,
                                )),
                          ),
                          Positioned(
                            bottom: 5,
                            child: Container(
                                height: 91,
                                width: 91,
                                child: Image.asset(
                                  "assets/images/down-arrow2.png",
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ],
                      ),
                    ),
                    StartLearning(),
                    Container(
                        height: 610,
                        width: Get.width,
                        color: Color(0xFF043873),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 13),
                          child: Column(
                            children: [
                              Text(
                                "Why learn with us?",
                                style: interFont.copyWith(
                                    fontSize: 64,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              GridView.builder(
                                shrinkWrap: true,
                                itemCount: dataCon.dummyLearn.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 24),
                                itemBuilder: (context, index) {
                                  final title =
                                      dataCon.dummyLearn[index]["title"];
                                  final subtitle =
                                      dataCon.dummyLearn[index]["subtitle"];
                                  final image =
                                      dataCon.dummyLearn[index]["image"];
                                  return Container(
                                    width: 397,
                                    height: 358,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 246,
                                          width: 246,
                                          child: Image.asset(image,
                                              fit: BoxFit.contain),
                                        ),
                                        SizedBox(
                                          height: 23,
                                        ),
                                        Text(
                                          title,
                                          style: interFont.copyWith(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 36,
                                        ),
                                        Text(
                                          subtitle,
                                          style: interFont.copyWith(
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        )),
                    Container(
                      height: 1000,
                      width: Get.width,
                      color: Color(0xFF75BBC6),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 24),
                        child: Column(
                          children: [
                            Text(
                              "What Our Students Say About Us!",
                              style: interFont.copyWith(
                                  fontSize: 64,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Container(
                              height: 800,
                              width: 1040,
                              child: GridView.builder(
                                shrinkWrap: true,
                                itemCount: dataCon.dummyAboutUs.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 190,
                                        mainAxisSpacing: 60,
                                        childAspectRatio: 450 / 360),
                                itemBuilder: (context, index) {
                                  final title =
                                      dataCon.dummyAboutUs[index]["title"];
                                  final message =
                                      dataCon.dummyAboutUs[index]["message"];
                                  final name =
                                      dataCon.dummyAboutUs[index]["name"];
                                  final major =
                                      dataCon.dummyAboutUs[index]["major"];
                                  return Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: Get.width,
                                          height: 215,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                title,
                                                style: GoogleFonts.roboto(
                                                    fontSize: 18,
                                                    fontStyle: FontStyle.italic,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xFF000000)),
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              Text(message,
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 18,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      fontWeight:
                                                          FontWeight.w200,
                                                      color: Color(0xFF000000)),
                                                  textAlign: TextAlign.center),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 12),
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 80,
                                                  width: 80,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      border: Border.all(
                                                          color:
                                                              Color(0xFFC4C4C4),
                                                          width: 2)),
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      SizedBox(
                                                          height: 55,
                                                          width: 55,
                                                          child: Image.asset(
                                                            "assets/images/person.png",
                                                            fit: BoxFit.contain,
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      name,
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          color: Color(
                                                              0xFF000000)),
                                                    ),
                                                    Text(
                                                      major,
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 16,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.black
                                                              .withOpacity(
                                                                  0.5)),
                                                    ),
                                                    Text(
                                                      "Brawijaya University",
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          color: Color(
                                                              0xB2283977)),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    FooterWebsite(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StartLearning extends StatelessWidget {
  final authCon = Get.find<AuthenticationController>();

  StartLearning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 680,
      width: Get.width,
      color: Color(0xFF75BBC6),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 76,
            bottom: 160,
            child: Container(
                width: 500,
                height: 460,
                child: Lottie.asset("assets/lottie/lottie2.json", fit: BoxFit.cover)),
          ),
          Positioned(
            right: 192,
            top: 247,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: 507,
                    child: Text(
                      "Mulailah untuk belajar HTML, CSS, dan JavaScript melalui fitur Recreate Design yang kami tawarkansecara Gratis!",
                      style: interFont.copyWith(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                SizedBox(
                  height: 66,
                ),
                InkWell(
                  onTap: () {
                    if(authCon.isAuth.isTrue){
                      Get.toNamed(Routes.DASHBOARD);
                    }else{
                      Get.toNamed(Routes.SIGN_IN);
                    }
                  },
                  child: Container(
                    width: 234,
                    height: 50,
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Color(0xFF3742FA), Color(0xFF000EFF)],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      "Start Learning",
                      style: interFont.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 100,
            child: Container(
                height: 130,
                width: 160,
                child: Image.asset(
                  "assets/images/circle1.png",
                  fit: BoxFit.contain,
                )),
          ),
          Positioned(
            top: 20,
            right: 372,
            child: Container(
                height: 130,
                width: 160,
                child: Image.asset(
                  "assets/images/circle1.png",
                  fit: BoxFit.contain,
                )),
          ),
          Positioned(
            right: 100,
            bottom: 48,
            child: Container(
                height: 250,
                width: 59,
                child: Image.asset(
                  "assets/images/background-element8.png",
                  fit: BoxFit.contain,
                )),
          ),
        ],
      ),
    );
  }
}
