import 'package:flutter/material.dart';
import 'package:flutter_getx/constant/product/product_cart_page_sizes.dart';
import 'package:flutter_getx/controllers/app_controllers.dart';
import 'package:get/get.dart';

class ProductCartPage extends StatelessWidget {
  ProductCartPage({Key? key}) : super(key: key);

  final controller = Get.find<AppControllers>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ProductCartPageSizes.productCartSiezedBoxHeight,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.listCartItem.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              ProductCartPageSizes.productGridviewDelegateCrossAxisCount,
        ),
        itemBuilder: (_, index) {
          final product = controller.getProduct(
              productId: controller.listCartItem[index].productId);
          return Stack(
            children: [
              Padding(
                padding: ProductCartPageSizes.productItemPadding,
                child: ClipOval(
                  child: Container(
                    color: Colors.green.shade100,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(product.name),
                          Text('X${controller.listCartItem[index].quantity}'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => controller.deletProductFromCart(
                  productId: controller.listCartItem[index].productId,
                ),
                child: const Icon(Icons.remove_circle),
              )
            ],
          );
        },
      ),
    );
  }
}
