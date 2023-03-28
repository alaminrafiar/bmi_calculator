import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/widgets/card_gender.dart';
import 'package:bmi_calculator/widgets/reusablecard.dart';
import 'package:bmi_calculator/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor =
      inactiveColor; // color change korar jonno aigola use korte hoi //
  Color femaleColor = inactiveColor;
  Gender? selectedGender;
  double height = 120.0;
  int weight =35;
  int age =15;

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
                    selectedGender = Gender.male;
                  });
                },
                color:
                    selectedGender == Gender.male ? activeColor : inactiveColor,
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
                      selectedGender = Gender.female;
                    });
                  },
                  color: selectedGender == Gender.female
                      ? activeColor
                      : inactiveColor,
                  cardChild: CardGender(
                    icon: Icons.female,
                    gender: femaleText,
                  ))
            ],
          ),
          ResuableCard(
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("HEIGHT", style: mediumTextStyle),
                ),
                // SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  // alphabetic line ar sathe milanor jonno ai ta use kora hoi

                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      "${height.toInt()}",
                      style: largeTextStyle,
                    ),
                    Text(
                      "cm",
                      style: mediumTextStyle,
                    ),
                  ],
                ),
                Slider(
                    value: height,
                    max: 200.0,
                    min: 120.0,
                    activeColor: Colors.lightGreenAccent,
                    inactiveColor: Colors.white24,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue;
                      });
                    })
              ],
            ),
            color: inactiveColor,
          ),
          Row(
            children: [
              ResuableCard(
                color: inactiveColor,
                cardChild: Column(
                  children: [
                    Text(
                      "WEIGHT",
                      style: mediumTextStyle,
                    ),
                    Row(
                      children: [
                        ResuableCard(
                          cardChild: Center(
                            child: Text(
                              "$weight",
                              style: largeTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Round_Icons_button(
                          onPressed: () {
                            setState(() {
                              weight++;

                            });
                          },
                          icon: Icons.add,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Round_Icons_button(
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                          icon: Icons.minimize_rounded,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              ResuableCard(
                color: inactiveColor,
                cardChild: Column(
                  children: [
                    Text(
                      "AGE",
                      style: mediumTextStyle,
                    ),
                    Row(
                      children: [
                        ResuableCard(
                          cardChild: Center(
                            child: Text(
                              "$age",
                              style: largeTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Round_Icons_button(
                          onPressed: () {
                           setState(() {
                             age++;
                           });
                          },
                          icon: Icons.add,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Round_Icons_button(
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                          icon: Icons.minimize_rounded,
                        )
                      ],
                    ),
                  ],
                ),
              ),

              // Row(
              //   children: [
              //     ResuableCard(
              //       cardChild: Text("80",
              //       style: largeTextStyle,
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
