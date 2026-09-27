import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  // Widget ini membutuhkan widget lain untuk ditampilkan di atasnya (child)
  const GradientBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    // Kita gunakan Container sebagai dasarnya
    return Container(
      // Properti decoration untuk styling visual
      decoration: const BoxDecoration(
        // Definisikan gradien linear
        gradient: LinearGradient(
          colors: [
            Color(0xFF333465), // Warna awal
            Color(0xFF0b395e), // Warna akhir
          ],
          begin: Alignment.topLeft, // Arah mulai gradien
          end: Alignment.bottomRight, // Arah akhir gradien
        ),
      ),
      // Tampilkan widget child di atas Container yang sudah bergradien
      child: child,
    );
  }
}
