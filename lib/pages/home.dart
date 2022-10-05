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
        body: Container(),
      ),
    );
  }
}
