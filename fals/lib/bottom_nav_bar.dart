import 'package:fals/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () =>  NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: const [
            const NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            const NavigationDestination(icon: Icon(Icons.chat_rounded), label: 'Chat'),
            const NavigationDestination(icon: Icon(Icons.bookmark), label: 'Bookmark'),
            const NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}


class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
//Change the containers with the screens.
  final screens = [

    Container(color: Colors.green,),
    Container(color: Colors.black,),
    Container(color: Colors.red,),
    Container(color: Colors.yellow,)

  ];
}