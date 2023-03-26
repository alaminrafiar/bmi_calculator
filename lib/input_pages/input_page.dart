import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/widgets/card_gender.dart';
import 'package:bmi_calculator/widgets/reusablecard.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);


  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleColor = inactiveColor; // color change korar jonno aigola use korte hoi //
  Color femaleColor = inactiveColor;
  Gender? selectedGender;

  //1 = male
  //2 = female
  void updateColor(Gender gender) {
    //   setState(() {
    //     if (gender == Gender.male) {
    //       maleColor = activeColor;
    //       femaleColor= inactiveColor;
    //     } else if (gender == Gender.female  ) {
    //       femaleColor = activeColor;
    //       maleColor =inactiveColor;
    //     }
    //   });
    }
    // ai toko na likheo amar ternary operator use kore korte pari

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "BMI CALCULATOR",
            style: TextStyle(color: Colors.lightGreenAccent),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.view_list_outlined,
            color: Colors.lightGreenAccent,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                ResuableCard(
                  onPressed: () {
                    print("male");
                    setState(() {
                      selectedGender =Gender.male;
                    });
                  },
                  color: selectedGender==Gender.male? activeColor: inactiveColor,
                  cardChild: CardGender(
                    icon: Icons.male,
                    gender: maleText,
                  ),

                  // cardChild: CardGender(
                  //   icon:Icons.male,
                  //   gender: 'Male',
                  // ),
                ),
                ResuableCard(
                    onPressed: () {
                      print("female");
                     setState(() {
                       selectedGender =Gender.female;
                     });
                    },
                    color: selectedGender==Gender.female? activeColor: inactiveColor,
                    cardChild: CardGender(
                      icon: Icons.female,
                      gender: femaleText,
                    ))
              ],
            ),
            const ResuableCard(
              cardChild: Text("baten"),
            ),
            Row(
              children: const [
                ResuableCard(
                  cardChild: Text(
                    "WEIGHT",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ResuableCard(
                  cardChild: Text(
                    "AGE",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }
  }
