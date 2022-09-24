import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/app_controllers.dart';
import 'package:flutter_getx/pages/chat.dart';
import 'package:flutter_getx/pages/feed.dart';
import 'package:flutter_getx/pages/profile.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static final _controller = Get.put(AppControllers());

  @override
  Widget build(BuildContext context) {
    return GetX<AppControllers>(
      init: AppControllers(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
        ),
        body: IndexedStack(
          index: _controller.navIndex.value,
          children: const [
            FeedPage(),
            ChatPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _controller.navIndex.value,
          onDestinationSelected: ((value) {
            _controller.navIndex.value = value;
          }),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.feed),
              label: 'Feed',
            ),
            NavigationDestination(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            NavigationDestination(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
