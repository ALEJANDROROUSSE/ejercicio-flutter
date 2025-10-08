import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double spacing = 20.0;
    const double squareSize = 130.0;

    return Scaffold(
      backgroundColor: const Color(0xFFf2f3f7),
      appBar: AppBar(
        title: const Text(
          'Diseño Moderno',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.indigoAccent.shade200,
        elevation: 6,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.rotate(
              angle: -0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildGradientSquare(
                    size: squareSize,
                    colors: [Colors.pinkAccent, Colors.deepPurpleAccent],
                    text: 'Uno',
                  ),
                  const SizedBox(width: spacing),
                  _buildGradientSquare(
                    size: squareSize,
                    colors: [Colors.cyan, Colors.indigo],
                    text: 'Dos',
                  ),
                ],
              ),
            ),
            const SizedBox(height: spacing),
            Transform.rotate(
              angle: 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildGradientSquare(
                    size: squareSize,
                    colors: [Colors.orangeAccent, Colors.redAccent],
                    text: 'Tres',
                  ),
                  const SizedBox(width: spacing),
                  _buildGradientSquare(
                    size: squareSize,
                    colors: [Colors.greenAccent, Colors.teal],
                    text: 'Cuatro',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGradientSquare({
    required double size,
    required List<Color> colors,
    required String text,
  }) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: colors.last.withOpacity(0.4),
            blurRadius: 10,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
