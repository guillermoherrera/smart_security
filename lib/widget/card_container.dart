import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key, required this.child, this.backgroundColor = Colors.transparent, this.paddingHorizontal = 20, this.boxShadowColor = Colors.transparent});

  final Widget child;
  final Color? backgroundColor;
  final Color? boxShadowColor;
  final double? paddingHorizontal;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: paddingHorizontal!),
        decoration: _createCardShape(),
        child: child,
      ),
    );
  }

  BoxDecoration _createCardShape() => BoxDecoration(
    color: backgroundColor!,
    borderRadius: BorderRadius.circular(25),
    boxShadow: [
      BoxShadow(color: boxShadowColor!, blurRadius: 15, offset: const Offset(0, 5))
    ]
  );
}