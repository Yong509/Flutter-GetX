import 'package:flutter/material.dart';
import 'package:flutter_getx/constant/product/product_gridview_page_sizes.dart';
import 'package:flutter_getx/controllers/app_controllers.dart';
import 'package:flutter_getx/model/cart/cart_item_model.dart';
import 'package:flutter_getx/model/product/product_model.dart';
import 'package:get/get.dart';

class ProductGridviewPage extends StatelessWidget {
  ProductGridviewPage({Key? key}) : super(key: key);

  final controller = Get.find<AppControllers>();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              ProductGridviewPageSizes.productGridviewDelegateCrossAxisCount),
      itemCount: ProductModel.productList.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (_, index) {
        return Stack(
          children: [
            GestureDetector(
              onTap: () => controller.addToCart(
                item: CartItemModel(
                  productId: ProductModel.productList[index].id,
                  price: ProductModel.productList[index].price,
                  quantity: ProductGridviewPageSizes
                      .productGridviewAddQuantityNewProduct,
                ),
              ),
              child: Padding(
                padding: ProductGridviewPageSizes.productItemPadding,
                child: ClipOval(
                  child: Container(
                    color: Colors.blue.shade200,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(ProductModel.productList[index].name),
            )
          ],
        );
      },
    );
  }
}
