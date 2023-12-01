import 'package:cresign/app/data/constraint/font.dart';
import 'package:cresign/app/data/widgets/navbar_website.dart';
import 'package:cresign/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/feedback_controller.dart';

class FeedbackView extends GetView<FeedbackController> {
  const FeedbackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF75BBC6),
        body: SafeArea(
            child: Column(
          children: [
            navbar(),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200),
              child: Container(
                child: Column(children: [
                  Container(
                    height: 280,
                    width: 280,
                    child:
                        Image.asset("images/feedback.png", fit: BoxFit.contain),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 161,
                    width: 1000,
                    decoration: BoxDecoration(
                        color: Color(0xFF043873),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Selamat! Anda telah berhasil menyelesaikan tantangan soal kuis",
                          style: interFont.copyWith(
                              color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "Semangat terus dan lanjutkan ke level berikutnya !",
                          style: interFont.copyWith(
                              color: Colors.white, fontSize: 18),
                        ),
                      ],
                    )),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(15),
                            backgroundColor: Color(0xFF043873),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          Get.toNamed(Routes.MATERI);
                        },
                        child: Text(
                          "Submit",
                          style: interFont.copyWith(
                              color: Colors.white, fontSize: 18),
                        )),
                  )
                ]),
              ),
            ))
          ],
        )));
  }
}
