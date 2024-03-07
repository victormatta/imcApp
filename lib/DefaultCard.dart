import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {
  const DefaultCard({super.key, @required this.cor, this.childCard});

  final Color? cor;
  final Widget? childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: cor),
      height: 159,
      margin: const EdgeInsets.all(15),
      child: childCard,
    );
  }
}