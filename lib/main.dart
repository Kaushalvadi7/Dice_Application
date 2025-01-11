import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyDiceBody(),
      ),
    );
  }
}


class MyDiceBody extends StatefulWidget {
  const MyDiceBody({super.key});

  @override
  State<MyDiceBody> createState() => _MyDiceBodyState();
}

class _MyDiceBodyState extends State<MyDiceBody> {
  int leftDice =1 ,rightDice =1;
  Roll(){
    setState(() {
      leftDice =Random().nextInt(6)+1;
      rightDice =Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:[
          Expanded(
              flex: 1,
              child: OutlinedButton(
            child: Image.asset("dice_images/face$leftDice.png",
              fit: BoxFit.fill,
              width: 300,
            ),

                onPressed: (){
              Roll();
            },
          )),
          Expanded(
              flex: 1,
              child: OutlinedButton(
                child: Image.asset(
                  "dice_images/face$rightDice.png",
                  fit: BoxFit.fill,
                  width: 300,
                ),

                onPressed: (){
                  Roll();
                },
              ))
        ]
      ),
    );
  }
}
