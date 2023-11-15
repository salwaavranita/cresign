import 'package:cresign/app/controllers/authentication_controller.dart';
import 'package:cresign/app/controllers/data_controller.dart';
import 'package:cresign/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constraint/font.dart';

class navbar extends StatelessWidget {
  final authCon = Get.find<AuthenticationController>();
  final dataCon = Get.find<DataController>();

  navbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 117,
      color: Color(0xFF043873),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 101),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 37, width: 48, child: Image.asset("images/logo.png")),
            Text(
              "CreSign",
              style: interFont.copyWith(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Obx(() {
              return SizedBox(
                width: authCon.isAuth.isTrue ? 157 : 207,
              );
            }),
            InkWell(
              onTap: () {
                dataCon.scrollTo(0);
              },
              child: Text(
                "Home",
                style: interFont.copyWith(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(
              width: 32,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Dashboard",
                style: interFont.copyWith(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(
              width: 32,
            ),
            InkWell(
              onTap: () {
                dataCon.scrollTo(2100);
              },
              child: Text(
                "Testimoni",
                style: interFont.copyWith(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(
              width: 32,
            ),
            InkWell(
              onTap: () {},
              child: authCon.isAuth.isTrue
                  ? SizedBox()
                  : Text(
                "My Project",
                style:
                interFont.copyWith(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(
              width: 13,
            ),
            Obx(() {
              return SizedBox(
                height: 50,
                width: 186,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: authCon.isAuth.isTrue
                              ? BorderRadius.circular(15)
                              : BorderRadius.circular(40),
                        )),
                    onPressed: () {
                      Get.toNamed(Routes.SIGN_IN);
                    },
                    child: authCon.isAuth.isTrue
                        ? Text(
                      "Level",
                      style: interFont.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    )
                        : Text(
                      "Sign In",
                      style: interFont.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFF384A)),
                    )),
              );
            }),
            SizedBox(
              width: 32,
            ),
            Obx(() {
              return SizedBox(
                height: 50,
                width: 186,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: authCon.isAuth.isTrue
                            ? Colors.white
                            : Color(0xFFFF384A),
                        shape: RoundedRectangleBorder(
                          borderRadius: authCon.isAuth.isTrue
                              ? BorderRadius.circular(15)
                              : BorderRadius.circular(40),
                        )),
                    onPressed: () {},
                    child: authCon.isAuth.isTrue
                        ? Text(
                      "My Project",
                      style: interFont.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    )
                        : Text(
                      "Register",
                      style: interFont.copyWith(
                          fontSize: 17, fontWeight: FontWeight.w700),
                    )),
              );
            }),
            SizedBox(width: 10,),
            Obx(() =>
            authCon.isAuth.isTrue
                ? CircleAvatar(
                radius: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    '${authCon.myUsers.value.photoUrl}',fit: BoxFit.cover,
                  ),
                ), 
            )
                : SizedBox())
          ],
        ),
      ),
    );
  }
}
