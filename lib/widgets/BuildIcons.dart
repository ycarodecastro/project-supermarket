import 'package:aplication_project/pages/CategoryPage.dart';
import 'package:flutter/material.dart';

class BuildIcons extends StatefulWidget {
  const BuildIcons({super.key});

  @override
  State<BuildIcons> createState() => _BuildIconsState();
}

class _BuildIconsState extends State<BuildIcons> {
  @override
  Widget build(BuildContext context) {
    final categories = [
      const CategoryItem(
        icon: Icons.set_meal,
        label: "Carnes",
        color: Colors.red,
      ),
      const CategoryItem(
        icon: Icons.local_florist,
        label: "Vegetais",
        color: Colors.green,
      ),
      const CategoryItem(
        icon: Icons.local_drink,
        label: "Bebidas",
        color: Colors.blue,
      ),
      const CategoryItem(
        icon: Icons.breakfast_dining,
        label: "Padaria",
        color: Colors.orangeAccent,
      ),
      const CategoryItem(
        icon: Icons.icecream,
        label: "Sobremesas",
        color: Colors.purpleAccent,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories
              .map(
                (item) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: item,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class CategoryItem extends StatefulWidget {
  final IconData icon;
  final String label;
  final Color color;

  const CategoryItem({
    required this.icon,
    required this.label,
    required this.color,
    super.key,
  });

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  bool isHovered = false;
  bool isPressed = false;

  double get _scale {
    if (isPressed) return 1.2;
    if (isHovered) return 1.00;
    return 1.0;
  }

  void _handleTap() async {
    // Aplica a animação de "press"
    setState(() => isPressed = true);

    // Espera um pequeno tempo para dar o efeito de "click"
    await Future.delayed(const Duration(milliseconds: 80));

    Navigator.push(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(
        builder: (context) => CategoryPage(categoryName: widget.label),
      ),
    );

    // Volta ao estado normal
    setState(() => isPressed = false);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: _handleTap,
        child: Column(
          children: [
            AnimatedScale(
              scale: _scale,
              duration: const Duration(milliseconds: 150),
              curve: Curves.easeOut,
              child: Column(
                children: [
                  Container(
                    width: 65,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: widget.color.withOpacity(0.12),
                    ),
                    child: Icon(widget.icon, color: widget.color, size: 30),
                  ),
                  const SizedBox(height: 2),
                ],
              ),
            ),

            Text(
              widget.label,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
