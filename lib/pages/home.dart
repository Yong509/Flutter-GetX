import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/app_controllers.dart';
import 'package:flutter_getx/pages/product/product_cart_page.dart';
import 'package:flutter_getx/pages/product/product_gridview_page.dart';
import 'package:get/get.dart';
import 'package:nil/nil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppControllers>(
      init: AppControllers(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text('Marketplace'),
        ),
        body: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (_, constraints) {
              return Wrap(
                children: [
                  controller.listCartItem.isEmpty
                      ? Container()
                      : ProductCartPage(),
                  ProductGridviewPage(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
