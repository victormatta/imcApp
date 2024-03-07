import 'package:flutter/material.dart';
import 'main_screen.dart';

class WeightCard extends StatefulWidget {
  const WeightCard({
    super.key,
    required this.weightTitleCard,
    required this.weightIconRemove,
    required this.weightIconAdd,
  });

  final String weightTitleCard;
  final IconData weightIconRemove;
  final IconData weightIconAdd;

  @override
  State<WeightCard> createState() => _WeightCardState();
}

class _WeightCardState extends State<WeightCard> {
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