import 'package:flutter/material.dart';
import 'main_screen.dart';

const colorHeight = Color(0XFFFFFFFF);

class HeightCard extends StatefulWidget {
  const HeightCard({super.key});

  @override
  State<HeightCard> createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  double handleHeight = 150;

  @override
  Widget build(BuildContext context) {

    String heightTitleCard = "ALTURA";
    //String heightNumber = "170";

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(heightTitleCard, style: TextStyle(
              color: Colors.black,
            ),)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(handleHeight.toStringAsFixed(0),
            style: TextStyle(
              color: colorHeight,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(
              width: 2,
            ),
            Text("cm"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Slider(
                value: handleHeight,
                min: 0,
                max: 200,
                activeColor: colorButton,
                onChanged: (newInterval) {
                  setState(() {
                    handleHeight = newInterval;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
