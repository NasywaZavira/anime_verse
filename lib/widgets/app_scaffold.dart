import 'package:flutter/material.dart';
import 'gradient_background.dart';

class AppScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;

  const AppScaffold({
    super.key,
    this.appBar,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    // AppScaffold mengembalikan GradientBackground sebagai dasar
    return GradientBackground(
      // Di dalamnya ada Scaffold standar
      child: Scaffold(
        // Pastikan Scaffold transparan agar gradien terlihat
        backgroundColor: Colors.transparent,
        // Body dan AppBar dari Scaffold akan diisi oleh widget apa pun
        // yang kita kirim saat memanggil AppScaffold
        appBar: appBar,
        body: body,
      ),
    );
  }
}
