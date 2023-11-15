import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/data_controller.dart';
import '../constraint/font.dart';

class FooterWebsite extends StatelessWidget {

  FooterWebsite({
    super.key,
  });

  final dataCon = Get.find<DataController>();



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 362,
      color: Color(0xFF043873),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 100, vertical: 29),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                SizedBox(height: 48,),
                Container(
                  width: 292,
                  child: Text(
                    "CreSign adalah sebuah platform yang memungkinkan pengguna untuk mengubah dan memodifikasi desain yang unik dan kreatif.",
                    style: interFont.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,height: 2),
                  ),
                  padding: EdgeInsets.all(10),
                ),
                SizedBox(height: 35,),
                Container(
                  height: 40,
                  width: 283,
                  child: Image.asset("images/sosmed.png",fit: BoxFit.contain),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Company",
                  style: interFont.copyWith(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 190,
                  width: 292,
                  child: ListView.builder(
                    physics:  NeverScrollableScrollPhysics(),
                    itemCount: dataCon.dummyCompany.length,
                    itemBuilder: (context, index) {
                      final title = dataCon.dummyCompany[index]["title"];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 19),
                        child: Center(child: Text(title,style: interFont.copyWith(fontSize: 18,color: Colors.white))),
                      );
                    },),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Student",
                  style: interFont.copyWith(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 190,
                  width: 292,
                  child: ListView.builder(
                    physics:  NeverScrollableScrollPhysics(),
                    itemCount: dataCon.dummyStudent.length,
                    itemBuilder: (context, index) {
                      final title = dataCon.dummyStudent[index]["title"];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 19),
                        child: Center(child: Text(title,style: interFont.copyWith(fontSize: 18,color: Colors.white))),
                      );
                    },),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Designer",
                  style: interFont.copyWith(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 190,
                  width: 292,
                  child: ListView.builder(
                    physics:  NeverScrollableScrollPhysics(),
                    itemCount: dataCon.dummyDesigner.length,
                    itemBuilder: (context, index) {
                      final title = dataCon.dummyDesigner[index]["title"];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 19),
                        child: Center(child: Text(title,style: interFont.copyWith(fontSize: 18,color: Colors.white))),
                      );
                    },),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}