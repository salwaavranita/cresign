import 'package:cresign/app/controllers/data_controller.dart';
import 'package:cresign/app/data/constraint/font.dart';
import 'package:cresign/app/data/widgets/navbar_website.dart';
import 'package:cresign/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/question_controller.dart';

class QuestionView extends GetView<QuestionController> {
  final data = Get.arguments;

  QuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final noQuestion = controller.noQuestion;
    final dataCon = data["questions"];
    print(dataCon);
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        navbar(),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 101),
            width: Get.width,
            color: Color(0xFF75BBC6),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Text("${data["category"]}: ${data["title"]}",
                        style: interFont.copyWith(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: Get.width,
                  height: 65,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.black, width: 0.5)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color(0xFFFF1665),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      Obx(() {
                        return Container(
                          width: 530,
                          height: 13,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: controller.noQuestion == 1 || controller.noQuestion == 2
                                ? Color(0xFFFF1665)
                                : Color(0xFF686868),
                          ),
                        );
                      }),
                      Obx(() {
                        return Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: controller.noQuestion == 1 || controller.noQuestion == 2
                                  ? Color(0xFFFF1665)
                                  : Color(0xFF686868),
                              borderRadius: BorderRadius.circular(100)),
                        );
                      }),
                      Obx(() {
                        return Container(
                          width: 530,
                          height: 13,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: controller.noQuestion == 2
                                ? Color(0xFFFF1665)
                                : Color(0xFF686868),
                          ),
                        );
                      }),
                      Obx(() {
                        return Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: controller.noQuestion == 2
                                  ? Color(0xFFFF1665)
                                  : Color(0xFF686868),
                              borderRadius: BorderRadius.circular(100)),
                        );
                      }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                        Border.all(color: Colors.black.withOpacity(
                            0.5))),
                    child: dataCon.isEmpty
                        ? Center(child: CircularProgressIndicator())
                        : Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(() {
                            return Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Question ${dataCon
                                      [noQuestion.value]
                                      ["no"]} of 3",
                                  style: interFont.copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 45,
                                  width: 211,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(
                                          0xFF043873),
                                    ),
                                    onPressed: () {
                                      if (noQuestion != 2) {
                                        noQuestion.value++;
                                      } else {
                                        noQuestion.value = 0;
                                        Get.toNamed(Routes.FEEDBACK);
                                      }
                                    },
                                    child: noQuestion != 2
                                        ? Text(
                                      "Next Question",
                                      style: interFont.copyWith(
                                          fontSize: 16,
                                          fontWeight:
                                          FontWeight.w600,
                                          color: Colors.white),
                                    )
                                        : Text(
                                      "Submit",
                                      style: interFont.copyWith(
                                          fontSize: 16,
                                          fontWeight:
                                          FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            );
                          }),
                          Obx(() {
                            return Text(
                              "${dataCon[noQuestion.value]
                                  ["question"]}",
                              style: interFont.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            );
                          }),
                          SizedBox(
                            height: 10,
                          ),
                          Obx(() {
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: dataCon
                                  [noQuestion.value]["options"]
                                  .length,
                              itemBuilder: (context, index) {
                                var options = dataCon
                                    [noQuestion.value]
                                    ["options"][index];
                                return Obx(() {
                                  return Card(
                                      child: Container(
                                        height: 50,
                                        child: Center(
                                          child: RadioListTile(
                                            title: Text(options),
                                            value: options,
                                            groupValue: controller
                                                .selectedOption.value,
                                            onChanged: (value) {
                                              controller
                                                  .setSelectedOption(
                                                  value.toString());
                                              print(controller
                                                  .selectedOption
                                                  .value);
                                            },
                                          ),
                                        ),
                                      ));
                                });
                              },
                            );
                          }),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        )
      ],
    )));
  }
}
