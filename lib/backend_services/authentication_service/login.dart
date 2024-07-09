import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:pak_messanger/backend_services/authentication_service/signup.dart';
import 'package:pak_messanger/backend_services/authentication_service/verify_number.dart';
import 'package:pak_messanger/utils/text_style.dart';
import 'package:pak_messanger/utils/textfield.dart';
import 'package:pak_messanger/widgets/background.dart';

import '../../view/home_view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlassBackground(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/app_icon.png"),
                  CustomTextField(
                    hintText: 'Enter Email...',
                    controller: emailController,
                    imagePath: 'assets/icons/email.png',
              
                  ),
                  SizedBox(height: 16,),
                  CustomTextField(
                    hintText: 'Password...',
                    controller: passwordController,
                    imagePath: 'assets/icons/password.png',
              
                  ),
                  SizedBox(height: 40,),
                  GlassContainer(
                    width: 300,
                    height: 50,
                    borderRadius: BorderRadius.zero,
                    child: IconButton(
                      icon: GlassText('Login',style: CustomGlassText.button),
                      onPressed: ()
                      {
                        Get.to(()=>VerifyPhoneScreen());
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/google.png',width: 34,height: 34,),
                        SizedBox(width: 50,),
                        Image.asset('assets/icons/facebook.png',width: 34,height: 34,),

                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  GlassText("-------OR------"),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GlassText('Create New Account',style: CustomGlassText.paragraph,),
                      TextButton(onPressed: ()
                      {
                      Get.to(()=>SignupScreen());
                      }, child: GlassText('Signup',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                        ),
                      )
                      )
                    ],
                  )
              
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
