import 'package:chewie/chewie.dart';
import 'package:cresign/app/controllers/data_controller.dart';
import 'package:cresign/app/data/constraint/font.dart';
import 'package:cresign/app/data/widgets/navbar_website.dart';
import 'package:cresign/app/modules/materi/controllers/materi_controller.dart';
import 'package:cresign/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MateriView extends GetView<MateriController> {
  final dataCon = Get.find<DataController>();

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
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: dataCon.dummyMateri.length,
                      itemBuilder: (context, index) {
                        final category = dataCon.dummyMateri[index]["category"];
                        final title = dataCon.dummyMateri[index]["title"];
                        final video = dataCon.dummyMateri[index]["video"];
                        final deskripsi =
                            dataCon.dummyMateri[index]["deskripsi"];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 25),
                          child: Container(
                            height: 600,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(30),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        category,
                                        style: interFont.copyWith(
                                            fontSize: 30,
                                            color: Color(0xFF667080)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Text(
                                          title,
                                          style: interFont.copyWith(
                                              fontSize: 35,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        width: 800,
                                        child: Text(
                                          deskripsi,
                                          style:
                                              interFont.copyWith(fontSize: 20),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 60),
                                        child: SizedBox(
                                          height: 50,
                                          width: 170,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              backgroundColor:
                                                  Color(0xFFFF384A),
                                            ),
                                            onPressed: () {
                                              Get.toNamed(Routes.QUESTION,arguments: dataCon.dummyMateri[index]);
                                            },
                                            child: Text(
                                              "Quiz",
                                              style: interFont.copyWith(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          height: 200,
                                          width: 300,
                                          child: Chewie(
                                              controller: controller
                                                  .setStreamAnime(video))),
                                      InkWell(
                                        onTap: () {
                                          controller.downloadMateri(dataCon.dummyMateri[index]["category"], dataCon.dummyMateri[index]["materi"]);
                                        },
                                        child: Container(
                                          height: 220,
                                          width: 300,
                                          child: Image.asset(
                                            "assets/images/materi.png",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 20),
                      child: Container(
                        width: Get.width,
                        height: 600,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Challenges",
                              style: interFont.copyWith(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 10, top: 30),
                              child: Text(
                                "Mei 2022 - Completed",
                                style: interFont.copyWith(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                            Text(
                              "Level 1",
                              style: interFont.copyWith(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Container(
                                height: 70,
                                width: 600,
                                child: Text(
                                  "Pada Level 1 ini, kamu akan diberikan suatu tantangan untuk melakukan recreate design yang simple dan menarik sesuai perintah yang diberikan!",
                                  style: interFont.copyWith(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Text(
                              "The challenge level one start now!",
                              style: interFont.copyWith(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: SizedBox(
                                height: 50,
                                width: 200,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    backgroundColor: Color(0xFFFF384A),
                                  ),
                                  onPressed: () {
                                    Get.toNamed(Routes.QUESTION,arguments:dataCon.dummyMateri[0] );
                                  },
                                  child: Text(
                                    "Start Now",
                                    style: interFont.copyWith(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Obx(() {
                              return Container(
                                height: 110,
                                width: 600,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: CheckboxListTile(
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    value: controller.isCheck.value,
                                    onChanged: (value) {
                                      controller.isCheck.toggle();
                                    },
                                    title: Text(
                                        "This month's challenges are over, but never fear, you can check out the past challenges below (it's never too late to use them for inspiration) or go back to the main challenges page for the currently running challenge.")),
                              );
                            }),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Completed Challenge!",
                              style: interFont.copyWith(
                                  fontSize: 24,
                                  color: Color(0xFF6BF571),
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                                width: 700,
                                child: Text(
                                    "These are past week’s challenges this month which have already been completed. Check out all the cool Pens people created for them.!",
                                    style: interFont.copyWith(
                                        fontSize: 18, color: Colors.white)))
                          ],
                        ),
                      ),
                    )
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
