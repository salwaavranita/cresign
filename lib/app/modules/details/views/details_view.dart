import 'package:cresign/app/data/constraint/font.dart';
import 'package:cresign/app/data/widgets/footer_website.dart';
import 'package:cresign/app/data/widgets/navbar_website.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/data_controller.dart';
import '../../../routes/app_pages.dart';
import '../controllers/details_controller.dart';

class DetailsView extends GetView<DetailsController> {
  final dataCon = Get.find<DataController>();

  var data = Get.arguments;
  DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = data["name"];
    var images = data["images"];
    var profile = data["profile"];

    return Scaffold(
      backgroundColor: Color(0xFF043873),
      body: SafeArea(
        child: Column(
          children: [
            navbar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(200),
                            topLeft: Radius.circular(200),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 48),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 105,
                                  width: 105,
                                  child: Image.asset(
                                    profile,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Lorem Ipsum Desain",
                                      style: interFont.copyWith(
                                          fontSize: 32, color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          name,
                                          style: interFont.copyWith(
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Container(
                                          height: 5,
                                          width: 5,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFA1A1A1),
                                            borderRadius: BorderRadius.circular(100)
                                          ),
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          "Follow",
                                          style: interFont.copyWith(
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 208,
                                ),
                                Container(
                                  width: 148,
                                  height: 65,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text("Save",
                                        style: interFont.copyWith(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                Container(
                                  width: 148,
                                  height: 65,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEA4C89),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text("Like",
                                        style: interFont.copyWith(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Container(
                              width: 1030,
                              height: 719,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: Image.asset(images,fit: BoxFit.contain),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            SizedBox(
                              width: 757,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
                                style: interFont.copyWith(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            SizedBox(
                              height: 80,
                              width: 818,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(35)),
                                      backgroundColor: Color(0xFFFF1665)),
                                  onPressed: () {},
                                  child: Text(
                                    "Pelajari Desain",
                                    style: interFont.copyWith(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w500),
                                  )),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Divider(thickness: 2, color: Color(0xFFD9D9D9)),
                            SizedBox(
                              height: 60,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 100),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "You Might Also Like",
                                    style: interFont.copyWith(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 60,),
                                  GridView.builder(
                                    shrinkWrap: true,
                                    itemCount: 6,
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
                                                child: Image.asset(images, fit: BoxFit.cover),
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
                                ],
                              ),
                            ),
                            SizedBox(height: 60,),
                            FooterWebsite()
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
