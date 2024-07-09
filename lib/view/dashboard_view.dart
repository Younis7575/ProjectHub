import 'package:flutter/material.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:pak_messanger/utils/text_style.dart';
import 'package:pak_messanger/widgets/background.dart';


class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: GlassAppBar(
      //   title: GlassText(
      //     'Chat',style: CustomGlassText.subtitle,
      //   ),
      // ),
      body: GlassBackground(
        child: GlassText('Home'),
      ),
    );
  }
}

