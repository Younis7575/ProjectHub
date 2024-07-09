import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBackground extends StatelessWidget {
  final Widget child;

  const GlassBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background1.jpg'), // Replace with your image
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.black.withOpacity(0.2), // Adjust opacity as needed
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20), // Adjust margin as needed
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), // Adjust border radius as needed
            border: Border.all(color: Colors.white.withOpacity(0.2)), // Adjust border color and opacity as needed
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // Same border radius as above
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1), // Adjust color and opacity as needed
                ),
                child: child,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
