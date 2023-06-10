import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_cofee_hub/veiws/screens/screen_app_home.dart';
import 'package:smart_cofee_hub/veiws/screens/screen_signup.dart';

import '../../widgets/my_elevated_buton.dart';
import '../../widgets/my_textfield.dart';

class screenLogIn extends StatefulWidget {
  @override
  State<screenLogIn> createState() => _screenLogInState();
}

class _screenLogInState extends State<screenLogIn> {
  var email_controller=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        title: Text(
          "Sign Up",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text("Name"),
              MyTextField(
                controller: email_controller,
                text: 'name',
                ShowHidePassward: false,
                // controller: userController.name_controller.value,
              ),
              Text("E-mail"),
              MyTextField(
                text: 'E-mail',
                ShowHidePassward: false,
                controller: email_controller,
              ),
              Text("phone"),
              MyTextField(
                text: 'phone',
                ShowHidePassward: true,
                controller: email_controller,
              ),
              Text("Password"),
              MyTextField(
                text: 'Password',
                ShowHidePassward: true,
                controller: email_controller,
              ),
              Text("confirm password"),
              MyTextField(
                text: 'confirm password',
                ShowHidePassward: true,
                controller: email_controller,
              ),
              SizedBox(
                height: 30,
              ),
              MyElevatedButton(
                text: 'Sign In',
                onpress: ()  {
                  Get.offAll(ScreenAppHome());



                },
                color: Colors.white,
                backgroundcolor: Color(0xff0B3385),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "already have an account?",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(ScreenSignIn());
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Color(0xff0B3385),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
