import 'package:flutter/material.dart';

class DarkBackground extends StatelessWidget {
  final Widget child;

  const DarkBackground({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0, 0.35),
          radius: 0.88,
          colors: [Color(0xFF130022), Color(0xFF080808)],
        ),
      ),
      child: child,
    );
  }
}
