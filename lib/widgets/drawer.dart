import 'package:flutter/material.dart';
import 'package:flutter_glass/flutter_glass.dart';
import 'package:pak_messanger/widgets/background.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: GlassBackground(
          child: ListView(
            // Add your drawer content here
            children: [
              DrawerHeader(
                child: Text(
                  'Younas',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
              ListTile(
                title: Text('Profile'),
                onTap: () {
                  // Handle item tap
                  Navigator.pop(context); // Close drawer
                },
              ),
              ListTile(
                title: Text('Groups'),
                onTap: () {
                  // Handle item tap
                  Navigator.pop(context); // Close drawer
                },
              ), ListTile(
                title: Text('Privacy'),
                onTap: () {
                  // Handle item tap
                  Navigator.pop(context); // Close drawer
                },
              ), ListTile(
                title: Text('Setting'),
                onTap: () {
                  // Handle item tap
                  Navigator.pop(context); // Close drawer
                },
              ),
              // Add more drawer items
            ],
          ),
        ),
    );
  }
}
