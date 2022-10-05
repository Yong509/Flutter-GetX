import 'package:flutter_getx/model/cart/cart_item_model.dart';
import 'package:flutter_getx/model/product/product_model.dart';
import 'package:get/get.dart';

class AppControllers extends GetxController {
  RxList<CartItemModel> listCartItem = <CartItemModel>[].obs;

  addToCart({required CartItemModel item}) {
    if (listCartItem
        .where((element) => (element.productId == item.productId))
        .isEmpty) {
      listCartItem.add(item);
    } else {
      listCartItem
          .firstWhere((element) => (element.productId == item.productId))
          .quantity++;
    }
    update();
  }

  ProductModel getProduct({required String productId}) {
    return ProductModel.productList
        .firstWhere((element) => element.id == productId);
  }

  deletProductFromCart({required String productId}) {
    listCartItem.removeWhere((element) => (element.productId == productId));
    update();
  }
}
