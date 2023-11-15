import 'package:cresign/app/controllers/data_controller.dart';
import 'package:cresign/app/data/constraint/font.dart';
import 'package:cresign/app/data/widgets/footer_website.dart';
import 'package:cresign/app/data/widgets/navbar_website.dart';
import 'package:cresign/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  final dataCon = Get.find<DataController>();

  DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            navbar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.builder(
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 80),
                      shrinkWrap: true,
                      itemCount: dataCon.dummyDesign.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 65,
                          crossAxisSpacing: 24,
                          childAspectRatio: 397 / 310),
                      itemBuilder: (context, index) {
                        final name = dataCon.dummyDesign[index]["name"];
                        final images = dataCon.dummyDesign[index]["images"];
                        final likes = dataCon.dummyDesign[index]["likes"];
                        final views = dataCon.dummyDesign[index]["views"];
                        final profile = dataCon.dummyDesign[index]["profile"];
                        return Container(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.toNamed(Routes.DETAILS,arguments: {
                                    "name" : name,
                                    "images" : images,
                                    "profile" : profile,
                                  });
                                },
                                child: Container(
                                  width: 397,
                                  height: 260,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Image.asset(images, fit: BoxFit.contain),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                width: 397,
                                height: 52,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 41,
                                            width: 41,
                                            child: Image.asset(
                                              profile,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(width: 21,),
                                          Text(
                                            name,
                                            style: interFont.copyWith(
                                                fontSize: 17,
                                                color: Colors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 90,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.thumb_up_off_alt_outlined,
                                            size: 20,
                                            color: Color(0xFF667080),
                                          ),
                                          Text(
                                            likes,
                                            style: interFont.copyWith(
                                                fontSize: 12,
                                                color: Colors.black),
                                          ),
                                          Icon(
                                            Icons.remove_red_eye,
                                            size: 20,
                                            color: Color(0xFF667080),
                                          ),
                                          Text(
                                            views,
                                            style: interFont.copyWith(
                                                fontSize: 12,
                                                color: Colors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    InkWell(
                      onTap: () {

                      },
                      child: Container(
                        width: 398,
                        height: 75,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(-0.99, 0.10),
                            end: Alignment(0.99, -0.1),
                            colors: [Color(0xFFFF3849), Color(0xFFFF5362)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: Center(child: Text("Load More Shots",style: interFont.copyWith(fontSize: 32,color: Colors.white))),
                      ),
                    ),
                    SizedBox(height: 83,),
                    FooterWebsite()
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
