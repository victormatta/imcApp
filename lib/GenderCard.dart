import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({super.key, required this.genderTitle, @required this.genderIcon});

  final String genderTitle;
  final IconData? genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(genderIcon, size: 95.0, color: Colors.white,),
        Text(genderTitle, style: const TextStyle(fontSize: 20, color: Colors.black),),
      ],
    );
  }
}