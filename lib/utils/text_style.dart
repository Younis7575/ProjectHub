import 'dart:ui';

import 'package:flutter/material.dart';

class CustomGlassText {
  static   TextStyle head1 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.white.withOpacity(0.8), // Adjust opacity for desired visibility
    shadows: [
      Shadow(
        blurRadius: 10.0,
        color: Colors.black.withOpacity(0.15), // Adjust color for glass effect
      ),
    ],
  );

  static   TextStyle subtitle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: Colors.white.withOpacity(0.7), // Adjust opacity for desired visibility
    shadows: [
      Shadow(
        blurRadius: 8.0 ,
        color: Colors.black.withOpacity(0.12), // Adjust color for glass effect
      ),
    ],
  );

  static   TextStyle paragraph = TextStyle(
    fontSize: 16.0,
    color: Colors.white.withOpacity(0.6), // Adjust opacity for readability
    shadows: [
      Shadow(
        blurRadius: 6.0,
        color: Colors.black.withOpacity(0.10), // Adjust color for glass effect
      ),
    ],
  );
  static   TextStyle button = TextStyle(
    fontSize: 20.0,
    color: Colors.white.withOpacity(0.6), // Adjust opacity for readability
    shadows: [
      Shadow(
        blurRadius: 6.0,
        color: Colors.black.withOpacity(0.10), // Adjust color for glass effect
      ),
    ],
  );
}
