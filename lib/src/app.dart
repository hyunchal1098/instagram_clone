import 'package:flutter/material.dart';
import 'package:flutter_clone/src/components/image_data.dart';
import 'package:flutter_clone/src/controller/bottom_nav_controller.dart';
import 'package:get/get.dart';

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: controller.pageIndex.value,
          onTap: (value) {},
          items: [
            BottomNavigationBarItem(
              icon: ImageData(IconsPath.homeOff),
              activeIcon: ImageData(IconsPath.homeOn),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: ImageData(IconsPath.searchOff),
              activeIcon: ImageData(IconsPath.searchOn),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: ImageData(IconsPath.uploadIcon),
              activeIcon: ImageData(IconsPath.uploadIcon),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: ImageData(IconsPath.activeOff),
              activeIcon: ImageData(IconsPath.activeOn),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey),
              ),
              label: "home",
            ),
          ],
        ),
      ),
    );
  }
}
