import 'package:aplication_project/data/mock_data.dart';
import 'package:aplication_project/widgets/BuildCarossel.dart';
import 'package:aplication_project/widgets/BuildIcons.dart';
import 'package:aplication_project/widgets/BuildHomeCards.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? selectedIndex; // controla qual card está selecionado

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Scrollbar(
          thumbVisibility: true,
          child: SingleChildScrollView(
            primary: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 22),
                sectionTitle("Promoções Especiais"),
                BuildCarossel(),
                const SizedBox(height: 22),

                sectionTitle("Categorias"),
                BuildIcons(),
                const SizedBox(height: 22),

                sectionTitle("Recomendações"),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: List.generate(products.length, (index) {
                        final produto = products[index];
                        return BuildHomeCards(
                          productName: produto.name,
                          productStore: produto.store,
                          productPrice: produto.price,
                          productImage: produto.image,
                          isSelected:
                              selectedIndex ==
                              index, // passa se está selecionado
                          onTap: () {
                            setState(() {
                              // se clicar no mesmo card, desmarca; senão, seleciona o novo
                              selectedIndex = selectedIndex == index
                                  ? null
                                  : index;
                            });
                          },
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(19, 4, 0, 16),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
