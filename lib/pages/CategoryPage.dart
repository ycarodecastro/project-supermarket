import 'package:aplication_project/data/mock_data.dart';
import 'package:aplication_project/models/classeCategory.dart';
import 'package:aplication_project/widgets/BuildCategoryCards.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  final String categoryName;

  const CategoryPage({Key? key, required this.categoryName}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Busca a categoria correta comparando o nome
    final category = categoryProduct.firstWhere(
      (cat) => cat.name.toLowerCase() == widget.categoryName.toLowerCase(),
      orElse: () => Category(name: "", product: []),
    );

    // Filtra os produtos de acordo com o texto da busca
    final filteredProducts = category.product.where((product) {
      final query = _searchController.text.toLowerCase();
      return product.name.toLowerCase().contains(query);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              buildSearch(),
              const SizedBox(height: 20),

              // Lista de produtos
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: filteredProducts.length,
                itemBuilder: (context, index) {
                  final product = filteredProducts[index];
                  return BuildCategoryCards(
                    cardName: product.name,
                    cardStore: product.store,
                    cardPrice: product.currentPrice,
                    cardDescripton: product.descripton,
                    cardImage: product.image,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSearch() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: TextField(
          controller: _searchController,
          onChanged: (_) => setState(() {}), // atualiza lista ao digitar
          decoration: InputDecoration(
            hintText: "Search...",
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
            prefixIcon: const Icon(Icons.search, color: Colors.green),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
          ),
          style: const TextStyle(color: Colors.black87, fontSize: 16),
        ),
      ),
    );
  }
}
