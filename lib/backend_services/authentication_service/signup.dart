import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:pak_messanger/backend_services/authentication_service/login.dart';
import 'package:pak_messanger/utils/text_style.dart';
import 'package:pak_messanger/utils/textfield.dart';
import 'package:pak_messanger/widgets/background.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();


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
                      hintText: 'Enter Name...',
                      controller: nameController,
                      imagePath: 'assets/icons/name.png',
                    ),
                    SizedBox(height: 16,),
                    CustomTextField(
                      hintText: 'Enter Email...',
                      controller: emailController,
                      imagePath: 'assets/icons/email.png',
                    ),
                    SizedBox(height: 16,),
                    CustomTextField(
                      hintText: 'Enter Phone...',
                      controller: phoneController,
                      imagePath: 'assets/icons/phone.png',
                    ),
                    SizedBox(height: 16,),
                    CustomTextField(
                      hintText: 'Enter Password...',
                      controller: passwordController,
                      imagePath: 'assets/icons/password.png',
                
                    ),
                    SizedBox(height: 16,),
                    CustomTextField(
                      hintText: 'Confirm Password...',
                      controller: cpasswordController,
                      imagePath: 'assets/icons/password.png',
                
                    ),
                    SizedBox(height: 40,),
                    GlassContainer(
                      width: 300,
                      height: 50,
                      borderRadius: BorderRadius.zero,
                      child: IconButton(
                        icon: GlassText('Register',style: CustomGlassText.button),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 20,),
                    GlassText("-------OR------"),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        GlassText('Already have Account',style: CustomGlassText.paragraph,),
                        TextButton(onPressed: ()
                        {
                          Get.to(()=>LoginScreen());
                        }, child: GlassText('Login',
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
