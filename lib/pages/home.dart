import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/app_controllers.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static final _controller = Get.put(AppControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${_controller.counter}',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
