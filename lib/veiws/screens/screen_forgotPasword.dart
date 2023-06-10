import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smart_cofee_hub/veiws/screens/screen_signup.dart';

import '../../widgets/my_elevated_buton.dart';
import '../../widgets/my_textfield.dart';

class ForgetPasword extends StatelessWidget {
  TextEditingController email_controller=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Forget Password"),
          backgroundColor: Colors.yellow,
        ),
        body: Obx(() {
          return Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Forget password",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
                MyTextField(
                  text: 'E-mail',
                  ShowHidePassward: false, controller: email_controller,
                  // controller: userController.email_controller.value,
                ),
                SizedBox(
                  height: 30,
                ),
                MyElevatedButton(
                  text: "Submit",
                  onpress: () async {
                    // var response = await userController.ForgetPassword();
                    // if (response == "done") {
                    //   Get.snackbar("Success", "Password sent check email");
                    //   Get.to(ScreenSignIn());
                    //   // userController.update();
                    // } else {
                    //   Get.snackbar("Alert", response.toString());
                    //   // userController.update();
                    // }
                  },
                  color: Colors.black,
                  backgroundcolor: Colors.red,
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
