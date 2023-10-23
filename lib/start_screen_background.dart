import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key, this.child});

  final Widget? child;

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        backgroundBlendMode: BlendMode.multiply,
        gradient: RadialGradient(
          colors: [Colors.purpleAccent, Colors.indigoAccent, Colors.blueAccent],
          radius: 2.5,
        ),
      ),
      child: child,
    );
  }
}
