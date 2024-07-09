import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';

import '../controller/home_controller.dart';
import '../widgets/background.dart';
import '../widgets/drawer.dart';
import 'dashboard_view.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key, required this.title});
  final String title;

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  late HomeController _controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return GlassBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: const MyDrawer(),
        appBar: GlassAppBar(
          title: const GlassText(
            'Chat',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          actions: [
            IconButton(
              icon: const GlassIcon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const GlassIcon(Icons.more_vert),
              onPressed: () => _scaffoldKey.currentState!.openDrawer(),
            ), // Use openDrawer to open the drawer
          ],
        ),
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _getBody(_controller.currentIndex),
        ),
        bottomNavigationBar: GlassBottomBar(
          items: [
            GlassBottomBarItem(
              icon: const Icon(Icons.home),
              title: const GlassText("Home"),
              selectedGradient: LinearGradient(
                colors: [
                  Colors.blue.withOpacity(0.5),
                  Colors.yellow.withOpacity(0.5),
                  Colors.red.withOpacity(0.5),
                ],
              ),
            ),
            GlassBottomBarItem(
              icon: const Icon(Icons.search),
              title: const GlassText("Search"),
            ),
            GlassBottomBarItem(
              icon: const Icon(Icons.settings),
              title: const GlassText("Settings"),
            ),
          ],
          onTap: (i) {
            setState(() {
              _controller.changeIndex(i);
            });
          },
          currentIndex: _controller.currentIndex,
        ),
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return DashboardView();
      case 1:
        return SearchScreen();
      case 2:
        return SettingsScreen();
      default:
        return Container();
    }
  }
}


class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Your search screen content here
        Text("Search Screen"),
      ],
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Your settings screen content here
        Text("Settings Screen"),
      ],
    );
  }
}

