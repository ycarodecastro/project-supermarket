import 'package:aplication_project/pages/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:aplication_project/pages/HomePage.dart';
import 'package:aplication_project/pages/ListPage.dart';

class Navegator extends StatefulWidget {
  const Navegator({super.key});

  @override
  State<Navegator> createState() => _NavegatorState();
}

class _NavegatorState extends State<Navegator> {
  TextEditingController controllerSearch = TextEditingController();
  int currentIndex_ = 0;

  final List<Widget> listPage = const [HomePage(), SearchPage(), ListPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            "_NomeApp_",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      // conteúdo rolável da página
      body: IndexedStack(index: currentIndex_, children: listPage),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex_,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedItemColor: const Color(0xff94b143),
        onTap: (index) => setState(() => currentIndex_ = index),
        items: [
          buildNavItem(Icons.house, "Início", 0),
          buildNavItem(Icons.search, "Pesquisar", 1),
          buildNavItem(Icons.shopping_basket_sharp, "Carrinho", 2),
        ],
      ),
    );
  }

  // ------------------------------ FUNÇÕES AUXILIARES ------------------------------

  BottomNavigationBarItem buildNavItem(IconData icon, String label, int index) {
  return BottomNavigationBarItem(
    label: label,
    icon: AnimatedScale(
      scale: currentIndex_ == index ? 1.2 : 1.0,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
      child: Icon(icon, size: 28),
    ),
  );
}

  Widget buildSearch(TextEditingController controller) {
    return Container(
      height: 42,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          hintText: "Pesquisar...",
          hintStyle: TextStyle(color: Colors.black, fontSize: 16),
          suffixIcon: Icon(Icons.search, color: Colors.black54),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 16),
        ),
        style: const TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }
}
