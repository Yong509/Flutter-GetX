class ProductModel {
  String id;
  String name;
  String description;
  double price;

  ProductModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.price});

  static List<ProductModel> productList = [
    ProductModel(
      id: "1",
      name: "Product 1",
      description: "Product 1 Description",
      price: 100,
    ),
    ProductModel(
      id: "2",
      name: "Product 2",
      description: "Product 2 Description",
      price: 300,
    ),
    ProductModel(
      id: "3",
      name: "Product 3",
      description: "Product 3 Description",
      price: 400,
    ),
    ProductModel(
      id: "4",
      name: "Product 4",
      description: "Product 4 Description",
      price: 100,
    ),
    ProductModel(
      id: "5",
      name: "Product 5",
      description: "Product 5 Description",
      price: 300,
    ),
    ProductModel(
      id: "3",
      name: "Product 3",
      description: "Product 3 Description",
      price: 400,
    ),
    ProductModel(
      id: "6",
      name: "Product 6",
      description: "Product 6 Description",
      price: 100,
    ),
    ProductModel(
      id: "7",
      name: "Product 7",
      description: "Product 7 Description",
      price: 300,
    ),
    ProductModel(
      id: "8",
      name: "Product 8",
      description: "Product 8 Description",
      price: 400,
    ),
  ];
}
