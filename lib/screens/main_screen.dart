import 'dart:ui';

import 'package:diabetes_predictor/widgets/gender_button.dart';
import 'package:flutter/material.dart';

import '../widgets/PlusMinus_buttons.dart';
import '../widgets/UserInfo.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainScreen> {
  Color color = Colors.grey;
  bool isMale = true;
  bool isFemale = false;

  int hD = 0;
  int hyp = 0;

  TextEditingController bmitextEditingController =
      TextEditingController(text: "1");
  TextEditingController agetextEditingController =
      TextEditingController(text: "1");
  TextEditingController bgtextEditingController =
      TextEditingController(text: "1");
  TextEditingController a1ctextEditingController =
      TextEditingController(text: "1");
  TextEditingController hdtextEditingController =
      TextEditingController(text: "1");
  TextEditingController hyptextEditingController =
      TextEditingController(text: "1");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scrollbar(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    GenderButton(
                      isMale: isMale,
                      genderDesc: "male",
                      icon: Icons.male,
                      onTap: () {
                        setState(() {
                          isMale = true;
                          isFemale = false;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GenderButton(
                      isMale: isFemale,
                      genderDesc: "female",
                      icon: Icons.female,
                      onTap: () {
                        setState(() {
                          isFemale = true;
                          isMale = false;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    UserInfo(
                        controller: bmitextEditingController,
                        // number: num.parse(bmi.toStringAsFixed(2)),
                        factorDesc: "BMI",
                        onMinusPressed: () {
                          setState(() {
                            num currentValue =
                                num.parse(bmitextEditingController.text);
                            bmitextEditingController.text =
                                (currentValue - 0.1).toString();
                          });
                        },
                        onPlussPressed: () {
                          setState(() {
                            if (num.parse(bmitextEditingController.text) > 0) {
                              num currentValue =
                                  num.parse(bmitextEditingController.text);
                              bmitextEditingController.text =
                                  (currentValue + 0.1).toString();
                            }
                          });
                        }),
                    const SizedBox(
                      width: 20,
                    ),
                    UserInfo(
                        controller: agetextEditingController,
                        //number: age,
                        factorDesc: "Age",
                        onMinusPressed: () {
                          setState(() {
                            if (num.parse(agetextEditingController.text) > 0) {
                              num currentValue =
                                  num.parse(agetextEditingController.text);
                              agetextEditingController.text =
                                  (currentValue - 1).toString();
                            }
                          });
                        },
                        onPlussPressed: () {
                          setState(() {
                            num currentValue =
                                num.parse(agetextEditingController.text);
                            agetextEditingController.text =
                                (currentValue + 1).toString();
                          });
                        }),
                  ],
                ),
              ),
            ),
            Container(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    UserInfo(
                        controller: a1ctextEditingController,
                        //number: num.parse(a1c.toStringAsFixed(2)),
                        factorDesc: "HbA1c",
                        onMinusPressed: () {
                          setState(() {
                            if (num.parse(a1ctextEditingController.text) > 0) {
                              num currentValue =
                                  num.parse(a1ctextEditingController.text);
                              a1ctextEditingController.text =
                                  (currentValue - 0.1).toString();
                            }
                          });
                        },
                        onPlussPressed: () {
                          setState(() {
                            if (num.parse(a1ctextEditingController.text) > 0) {
                              num currentValue =
                                  num.parse(a1ctextEditingController.text);
                              a1ctextEditingController.text =
                                  (currentValue + 0.1).toString();
                            }
                          });
                        }),
                    const SizedBox(
                      width: 20,
                    ),
                    UserInfo(
                        controller: bgtextEditingController,
                        //number: bg,
                        factorDesc: "Glucose",
                        onMinusPressed: () {
                          setState(() {
                            if (num.parse(bgtextEditingController.text) > 0) {
                              num currentValue =
                                  num.parse(bgtextEditingController.text);
                              bgtextEditingController.text =
                                  (currentValue - 1).toString();
                            }
                          });
                        },
                        onPlussPressed: () {
                          setState(() {
                            if (num.parse(bgtextEditingController.text) > 0) {
                              num currentValue =
                                  num.parse(bgtextEditingController.text);
                              bgtextEditingController.text =
                                  (currentValue + 1).toString();
                            }
                          });
                        }),
                  ],
                ),
              ),
            ),
            Container(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    UserInfo(
                        controller: hdtextEditingController,
                        // number: hD,
                        factorDesc: "Heart\nDisease",
                        onMinusPressed: () {
                          setState(() {
                            if (hD > 0) {
                              hD--;
                            }
                          });
                        },
                        onPlussPressed: () {
                          setState(() {
                            if (hD < 1) {
                              hD++;
                            }
                          });
                        }),
                    const SizedBox(
                      width: 20,
                    ),
                    UserInfo(
                        controller: hyptextEditingController,
                        // number: hyp,
                        factorDesc: "hypertension", //edit font size
                        onMinusPressed: () {
                          setState(() {
                            if (hyp > 0) {
                              hyp--;
                            }
                          });
                        },
                        onPlussPressed: () {
                          setState(() {
                            if (hyp < 1) {
                              hyp++;
                            }
                          });
                        }),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: MaterialButton(
                color: const Color(0xffff646e),
                onPressed: () {},
                height: 50,
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
