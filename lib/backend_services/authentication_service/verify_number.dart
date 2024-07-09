import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:pak_messanger/backend_services/authentication_service/signup.dart';
import 'package:pak_messanger/utils/text_style.dart';
import 'package:pak_messanger/utils/textfield.dart';
import 'package:pak_messanger/widgets/background.dart';

import '../../view/home_view.dart';

class VerifyPhoneScreen extends StatefulWidget {
  const VerifyPhoneScreen({super.key});

  @override
  State<VerifyPhoneScreen> createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
  TextEditingController verifyController = TextEditingController();



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
                      hintText: 'Enter Code...',
                      controller: verifyController,
                      imagePath: 'assets/icons/password.png',

                    ),
                    SizedBox(height: 20,),
                    GlassContainer(
                      width: 300,
                      height: 50,
                      borderRadius: BorderRadius.zero,
                      child: IconButton(
                        icon: GlassText('Verify',style: CustomGlassText.button),
                        onPressed: ()
                        {
                          Get.to(()=>HomePageView(title: 'home',));
                        },
                      ),
                    ),


                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
