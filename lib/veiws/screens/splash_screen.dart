import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_cofee_hub/veiws/screens/screen_login.dart';
import 'package:smart_cofee_hub/veiws/screens/screen_signup.dart';

import '../../widgets/my_elevated_buton.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0B3385),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 130.sp,
            ),
            SizedBox(
              height: 20.sp,
            ),
            Text("Smart Coffee Hub ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  // fontFamily: "PoetsenOne_Regular"
                )),
            // SizedBox(height: 100,),
            Spacer(),
            MyElevatedButton(
              text: "Login",
              color: Color(0xff0B3385),
              backgroundcolor: Colors.white,
              onpress: () {
                Get.to(ScreenSignIn());
              },
              // backgroundcolor: Colors.white,
            ),
            SizedBox(
              height: 10.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "don't have an account?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Get.to(screenLogIn());
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white, fontStyle: FontStyle.italic),
                    )),
              ],
            )
          ],
        ));
  }
}
