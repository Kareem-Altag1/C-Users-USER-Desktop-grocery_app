class Product {
  final String name;
  final String image;
  final double price;

  Product({
    required this.name,
    required this.image,
    required this.price,
  });
}

List<Product> products = [
  Product(
    name: "أفوكادو",
    image: "assets/images/Avocado.jpg",
    price: 2.8,

  ),
  Product(
    name: "شمام",
    image: "assets/images/Melon.jpg",
    price: 3.2,

  ),
  Product(
    name: "أناناس",
    image: "assets/images/Pineapples.jpg",
    price: 3.5,

  ),
  Product(
    name: "عنب",
    image: "assets/images/Grapes.jpg",
    price: 2.2,

  ),
  Product(
    name: "ليمون",
    image: "assets/images/Lemons.jpg",
    price: 1.5,

  ),
  Product(
    name: "بطيخ",
    image: "assets/images/Watermelon.jpg",
    price: 4.0,
  ),
  Product(
    name: "كمثرى",
    image: "assets/images/Pear.jpg",
    price: 2.3,
  ),
  Product(
    name: "كيوي",
    image: "assets/images/Kiwi.jpg",
    price: 3.0,
  ),
  Product(
    name: "برتقال",
    image: "assets/images/Oranges.jpg",
    price: 2.0,
  ),
  Product(
    name: "موز",
    image: "assets/images/Bananas.jpg",
    price: 1.8,
  ),
  Product(
    name: "تفاح",
    image: "assets/images/Apples.jpg",
    price: 2.5,
  ),
];