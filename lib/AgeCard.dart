import 'package:flutter/material.dart';
import 'main_screen.dart';

class AgeCard extends StatefulWidget {
  const AgeCard({
    super.key,
    required this.ageTitleCard,
    required this.ageIconRemove,
    required this.ageIconAdd,
  });

  final String ageTitleCard;
  final IconData ageIconRemove;
  final IconData ageIconAdd;

  @override
  State<AgeCard> createState() => _AgeCardState();
}

class _AgeCardState extends State<AgeCard> {
  double handleWeight = 60;

  void negativeWeight() {
    if (handleWeight < 0) {
      handleWeight = 0;
      print("Peso Inválido! Insira um peso válido.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.weightTitleCard, style: TextStyle(
                fontSize: 17,
                color: Colors.black
            ),),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(handleWeight.toStringAsFixed(0),
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  handleWeight--;
                  negativeWeight();
                });
              },
              child: Icon(widget.weightIconRemove, size: 15.0, color: Colors.white),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(inativeColorCard),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  handleWeight++;
                });
              },
              child: Icon(widget.weightIconAdd, size: 15.0, color: Colors.white),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(inativeColorCard),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}