import 'package:aplication_project/models/classeCategory.dart';
import 'package:aplication_project/models/classeProduct.dart';

final List<Product> products = [
  Product(
    name: "Maçã",
    store: "Mercado Bom Preço",
    image: "https://cdn-icons-png.flaticon.com/512/415/415682.png",
    descripton: "Essa maçã é muito deliciosa...",
    price: 4.50,
  ),
  Product(
    name: "Banana",
    store: "Mercado Tropical",
    image: "https://cdn-icons-png.flaticon.com/512/415/415733.png",
    descripton: "Essa banana é muito muito gostosa...",
    price: 3.50,
  ),
  Product(
    name: "Abacate",
    store: "Horti Fruti Central",
    image: "https://cdn-icons-png.flaticon.com/512/415/415744.png",
    descripton: "Um abate precioso...",
    price: 6.00,
  ),

  Product(
    name: "Uva",
    store: "Horti Fruti Central",
    image: "https://cdn-icons-png.flaticon.com/512/415/415744.png",
    descripton: "Uma uva muito doce...",
    price: 5.40,
  ),

  Product(
    name: "Picanha",
    store: "Central Butcher",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046769.png",
    descripton: "Picanha muito deliciosa e barata.",
    price: 59.90,
  ),
  Product(
    name: "Frango Congelado",
    store: "Central Butcher",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046790.png",
    descripton: "Melhor frango que você irá comer.",
    price: 18.50,
  ),
  Product(
    name: "Carne Toscana",
    store: "Zé's Butcher Shop",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046807.png",
    descripton: "Uma deliciosa carne para todos os momentos.",
    price: 22.30,
  ),
];

final List<Product> carnes = [
  Product(
    name: "Picanha",
    store: "Central Butcher",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046769.png",
    descripton: "Picanha muito deliciosa e barata.",
    price: 59.90,
  ),
  Product(
    name: "Frango Congelado",
    store: "Central Butcher",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046790.png",
    descripton: "Melhor frango que você irá comer.",
    price: 18.50,
  ),
  Product(
    name: "Carne Toscana",
    store: "Zé's Butcher Shop",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046807.png",
    descripton: "Uma deliciosa carne para todos os momentos.",
    price: 22.30,
  ),
];

final List<Product> vegetais = [
  Product(
    name: "Cenoura",
    store: "Green Market",
    image: "https://cdn-icons-png.flaticon.com/512/415/415733.png",
    descripton: "Cenouras deliciosas, perfeitas para fazer uma sopa.",
    price: 4.20,
  ),
  Product(
    name: "Tomate",
    store: "Green Market",
    image: "https://cdn-icons-png.flaticon.com/512/415/415732.png",
    descripton: "Um ingrediente que combina com tudo",
    price: 5.10,
  ),
  Product(
    name: "Batata",
    store: "Good Price Market",
    image: "https://cdn-icons-png.flaticon.com/512/415/415728.png",
    descripton: "High-quality potatoes for everyday meals.",
    price: 3.80,
  ),
];

// 🥤 Drinks
final List<Product> bebidas = [
  Product(
    name: "Cola Soda",
    store: "Tropical Market",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046762.png",
    descripton: "2L soda with classic cola flavor.",
    price: 7.50,
  ),
  Product(
    name: "Orange Juice",
    store: "Green Market",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046784.png",
    descripton: "100% natural orange juice, no preservatives.",
    price: 6.00,
  ),
  Product(
    name: "Mineral Water",
    store: "Good Price Market",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046783.png",
    descripton: "1.5L bottle of natural mineral water.",
    price: 2.50,
  ),
];

final List<Product> padarias = [
  Product(
    name: "French Bread",
    store: "Central Bakery",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046772.png",
    descripton: "Fresh and crispy French bread.",
    price: 0.80,
  ),
  Product(
    name: "Croissant",
    store: "John's Bakery",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046778.png",
    descripton: "Soft and buttery croissant.",
    price: 4.00,
  ),
  Product(
    name: "Chocolate Cake",
    store: "Central Bakery",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046781.png",
    descripton: "Homemade chocolate cake with frosting.",
    price: 15.90,
  ),
];

// 🍦 Desserts
final List<Product> sobremesas = [
  Product(
    name: "Strawberry Ice Cream",
    store: "Tropical Ice Cream",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046789.png",
    descripton: "Artisan strawberry ice cream, creamy and delicious.",
    price: 12.00,
  ),
  Product(
    name: "Milk Pudding",
    store: "Sweet Delight",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046795.png",
    descripton: "Traditional milk pudding with caramel sauce.",
    price: 10.50,
  ),
  Product(
    name: "Lemon Pie",
    store: "Sweet Delight",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046800.png",
    descripton: "Creamy lemon pie topped with whipped cream.",
    price: 14.00,
  ),
];

final List<Category> categoryProduct = [
  Category(name: "carnes", product: carnes),
  Category(name: "vegetais", product: vegetais),
  Category(name: "bebidas", product: bebidas),
  Category(name: "padaria", product: padarias),
  Category(name: "sobremesas", product: sobremesas),
];
