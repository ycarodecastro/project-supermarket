import 'package:aplication_project/models/classeCategory.dart';
import 'package:aplication_project/models/classeProduct.dart';

final List<Product> products = [
  Product(
    name: "Maçã",
    store: "Mercado Bom Preço",
    image: "https://cdn-icons-png.flaticon.com/512/415/415682.png",
    descripton: "Maçãs frescas e crocantes, ideais para sucos e sobremesas.",
    currentPrice: 4.50,
    oldPrice: 5.00,
    promo: 10,
  ),
  Product(
    name: "Banana Nanica",
    store: "Supermercado Popular",
    image: "https://cdn-icons-png.flaticon.com/512/766/766378.png",
    descripton: "Bananas maduras, perfeitas para vitaminas e lanches rápidos.",
    currentPrice: 3.20,
    oldPrice: 3.80,
    promo: 15,
  ),
  Product(
    name: "Leite Integral 1L",
    store: "Mercantil São José",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046786.png",
    descripton: "Leite integral de alta qualidade, ideal para café da manhã.",
    currentPrice: 4.80,
    oldPrice: 5.50,
    promo: 13,
  ),
  Product(
    name: "Arroz Branco 5kg",
    store: "Atacadão da Economia",
    image: "https://cdn-icons-png.flaticon.com/512/3076/3076049.png",
    descripton: "Arroz branco tipo 1, soltinho e saboroso.",
    currentPrice: 19.90,
    oldPrice: 24.90,
    promo: 20,
  ),
  Product(
    name: "Feijão Carioca 1kg",
    store: "Super Econômico",
    image: "https://cdn-icons-png.flaticon.com/512/2738/2738803.png",
    descripton: "Feijão carioca selecionado, ideal para o dia a dia.",
    currentPrice: 7.50,
    oldPrice: 9.00,
    promo: 17,
  ),
  Product(
    name: "Café Tradicional 500g",
    store: "Mercado Central",
    image: "https://cdn-icons-png.flaticon.com/512/924/924514.png",
    descripton: "Café torrado e moído com aroma intenso e sabor encorpado.",
    currentPrice: 14.90,
    oldPrice: 16.90,
    promo: 12,
  ),
  Product(
    name: "Sabão em Pó 2kg",
    store: "Hiper Limpeza",
    image: "https://cdn-icons-png.flaticon.com/512/726/726476.png",
    descripton: "Remove as manchas mais difíceis, deixando um perfume suave.",
    currentPrice: 18.90,
    oldPrice: 22.90,
    promo: 17,
  ),
  Product(
    name: "Detergente Neutro 500ml",
    store: "Supermercado Econômico",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046764.png",
    descripton: "Limpeza eficaz para louças e superfícies, com pH neutro.",
    currentPrice: 2.50,
    oldPrice: 3.00,
    promo: 17,
  ),
  Product(
    name: "Refrigerante Cola 2L",
    store: "Mercadinho do Povo",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046784.png",
    descripton: "Refrigerante sabor cola com gás e sabor inconfundível.",
    currentPrice: 7.00,
    oldPrice: 8.50,
    promo: 18,
  ),
  Product(
    name: "Pão de Forma Integral",
    store: "Padaria Trigo Dourado",
    image: "https://cdn-icons-png.flaticon.com/512/2674/2674024.png",
    descripton: "Pão macio e saudável, com grãos integrais selecionados.",
    currentPrice: 8.90,
    oldPrice: 10.50,
    promo: 15,
  ),
];

// 🍖 Carnes
final List<Product> carnes = [
  Product(
    name: "Picanha",
    store: "Açougue Central",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046769.png",
    descripton:
        "Picanha suculenta e macia, ideal para o churrasco de fim de semana.",
    currentPrice: 59.90,
    oldPrice: 79.90,
    promo: 25,
  ),
  Product(
    name: "Frango Congelado",
    store: "Açougue Central",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046790.png",
    descripton: "Frango de alta qualidade, perfeito para assar ou grelhar.",
    currentPrice: 18.50,
    oldPrice: 24.70,
    promo: 25,
  ),
  Product(
    name: "Linguiça Toscana",
    store: "Açougue do Zé",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046807.png",
    descripton:
        "Linguiça toscana temperada, saborosa e pronta para o churrasco.",
    currentPrice: 22.30,
    oldPrice: 29.70,
    promo: 25,
  ),
];

// 🥕 Vegetais
final List<Product> vegetais = [
  Product(
    name: "Cenoura",
    store: "Mercado Verde",
    image: "https://cdn-icons-png.flaticon.com/512/415/415733.png",
    descripton: "Cenouras frescas e crocantes, ideais para sopas e saladas.",
    currentPrice: 4.20,
    oldPrice: 5.60,
    promo: 25,
  ),
  Product(
    name: "Tomate",
    store: "Mercado Verde",
    image: "https://cdn-icons-png.flaticon.com/512/415/415732.png",
    descripton:
        "Tomates maduros e suculentos, perfeitos para molhos e saladas.",
    currentPrice: 5.10,
    oldPrice: 6.80,
    promo: 25,
  ),
  Product(
    name: "Batata",
    store: "Mercado Bom Preço",
    image: "https://cdn-icons-png.flaticon.com/512/415/415728.png",
    descripton: "Batatas de alta qualidade, ideais para fritar ou cozinhar.",
    currentPrice: 3.80,
    oldPrice: 5.10,
    promo: 25,
  ),
];

// 🥤 Bebidas
final List<Product> bebidas = [
  Product(
    name: "Refrigerante Cola",
    store: "Mercado Tropical",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046762.png",
    descripton: "Refrigerante de 2L com o sabor clássico de cola.",
    currentPrice: 7.50,
    oldPrice: 10.00,
    promo: 25,
  ),
  Product(
    name: "Suco de Laranja",
    store: "Mercado Verde",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046784.png",
    descripton: "Suco 100% natural de laranja, sem conservantes.",
    currentPrice: 6.00,
    oldPrice: 8.00,
    promo: 25,
  ),
  Product(
    name: "Água Mineral",
    store: "Mercado Bom Preço",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046783.png",
    descripton: "Garrafa de 1,5L de água mineral natural e pura.",
    currentPrice: 2.50,
    oldPrice: 3.30,
    promo: 25,
  ),
];

// 🥐 Padaria
final List<Product> padarias = [
  Product(
    name: "Pão Francês",
    store: "Padaria Central",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046772.png",
    descripton: "Pão francês fresco, crocante por fora e macio por dentro.",
    currentPrice: 0.80,
    oldPrice: 1.10,
    promo: 25,
  ),
  Product(
    name: "Croissant",
    store: "Padaria do João",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046778.png",
    descripton: "Croissant amanteigado e leve, ideal para o café da manhã.",
    currentPrice: 4.00,
    oldPrice: 5.30,
    promo: 25,
  ),
  Product(
    name: "Bolo de Chocolate",
    store: "Padaria Central",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046781.png",
    descripton: "Bolo caseiro de chocolate com cobertura cremosa.",
    currentPrice: 15.90,
    oldPrice: 21.20,
    promo: 25,
  ),
];

// 🍰 Sobremesas
final List<Product> sobremesas = [
  Product(
    name: "Sorvete de Morango",
    store: "Sorveteria Tropical",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046789.png",
    descripton: "Sorvete artesanal de morango, cremoso e refrescante.",
    currentPrice: 12.00,
    oldPrice: 16.00,
    promo: 25,
  ),
  Product(
    name: "Pudim de Leite",
    store: "Doces Delícia",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046795.png",
    descripton: "Pudim de leite tradicional com calda de caramelo.",
    currentPrice: 10.50,
    oldPrice: 14.00,
    promo: 25,
  ),
  Product(
    name: "Torta de Limão",
    store: "Doces Delícia",
    image: "https://cdn-icons-png.flaticon.com/512/1046/1046800.png",
    descripton: "Torta cremosa de limão coberta com chantilly.",
    currentPrice: 14.00,
    oldPrice: 18.70,
    promo: 25,
  ),
];

final List<Category> categoryProduct = [
  Category(name: "carnes", product: carnes),
  Category(name: "vegetais", product: vegetais),
  Category(name: "bebidas", product: bebidas),
  Category(name: "padaria", product: padarias),
  Category(name: "sobremesas", product: sobremesas),
];
