import 'package:flutter/material.dart';
import 'DefaultCard.dart';
import 'GenderCard.dart';
import 'HeightCard.dart';
import 'WeightCard.dart';
import 'AgeCard.dart';
import 'functions/utilities.dart';

const double boxBottom = 70;
const Color colorBox = Color(0xFF9E9E9E);
const Color colorButton = Color(0xFFFF5822);
const inativeColorCard = Color(0xFF7E7E7E);
const activeColorCard = Color(0xFF9E9E9E);

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String titleText = 'Calculator IMC';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(titleText,
            style: const TextStyle(
                color: Color(0xFFFFFFFF)
            )),
        ),
        backgroundColor: const Color(0xFF616161),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      alterColorCard(GenderMF.male);
                    });
                  },
                  child: DefaultCard(cor: masculineCard,
                  childCard: const GenderCard(genderTitle: 'MASCULINO',
                  genderIcon: Icons.male_outlined),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      alterColorCard(GenderMF.female);
                    });
                  },
                  child: DefaultCard(cor: femaleCard,
                  childCard: const GenderCard(genderTitle: 'FEMININO',
                  genderIcon: Icons.female_outlined),),
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Expanded(
                child: DefaultCard(cor: colorBox, childCard: HeightCard()),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: DefaultCard(cor: colorBox,
                  childCard: WeightCard(weightTitleCard: "PESO", weightIconRemove: Icons.remove,
                      weightIconAdd: Icons.add),
              ),
              ),
              Expanded(
                child: DefaultCard(cor: colorBox,
                  childCard: AgeCard(),),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: boxBottom,
            color: colorButton,
          ),
        ],
      ),
      backgroundColor: const Color(0xFF595959),
    );
  }
}