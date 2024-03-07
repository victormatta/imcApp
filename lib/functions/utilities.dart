import 'package:flutter/material.dart';
import '../main_screen.dart';

enum GenderMF {
  male,
  female,
}


Color masculineCard = inativeColorCard;
Color femaleCard = inativeColorCard;

void alterColorCard(GenderMF genderSelected) {
  if (genderSelected == GenderMF.male) {
    if (masculineCard == inativeColorCard) {
      masculineCard = activeColorCard;
      femaleCard = inativeColorCard;
    } else {
      masculineCard = inativeColorCard;
    }
  }

  if (genderSelected == GenderMF.female) {
    if (femaleCard == inativeColorCard) {
      femaleCard = activeColorCard;
      masculineCard = inativeColorCard;
    } else {
      femaleCard = inativeColorCard;
    }
  }
}