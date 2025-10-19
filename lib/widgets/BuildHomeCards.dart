import 'package:flutter/material.dart';

class BuildHomeCards extends StatelessWidget {
  final String productName;
  final String productStore;
  final double productCurrentPrice;
  final double productOldPrice;
  final double productPromo;
  final String productImage;
  final bool isSelected;
  final VoidCallback onTap;

  const BuildHomeCards({
    super.key,
    required this.productName,
    required this.productStore,
    required this.productCurrentPrice,
    required this.productOldPrice,
    required this.productPromo,
    required this.productImage,
    required this.isSelected,
    required this.onTap,
  });

  String limitText(String text, {int limit = 16}) {
    if (text.length <= limit) return text;
    return "${text.substring(0, limit)}...";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 198,
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1,
          color: const Color.fromARGB(255, 223, 223, 223),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Imagem + selo de promoção
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                  child: Image.network(
                    productImage,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFFF5722),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "-${productPromo.toStringAsFixed(0)}%",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // 🔹 Nome do produto
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              limitText(productName),
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 8),

          // 🔹 Nome da loja
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              limitText(productStore, limit: 25),
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),

          const SizedBox(height: 6),

          // 🔹 Preços
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  "R\$ ${productCurrentPrice.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green, // Laranja
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  "R\$ ${productOldPrice.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey[600],
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),

          // 🔹 Botões Mapa e Adicionar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                // Botão Mapa
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.lightGreen),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.location_on,
                          size: 20,
                          color: Colors.lightGreen,
                        ),
                        SizedBox(width: 6),
                        Text(
                          "Mapa",
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // Botão Adicionar
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.green,
                      shadowColor: Colors.orangeAccent,
                      elevation: 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.shopping_cart_outlined,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Listar",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
