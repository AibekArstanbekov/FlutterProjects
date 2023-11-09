import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  Random random = Random();
  int playerOnefirstDice = 1;
  int playerOnesecondDice = 1;
  int sun1 = 0;

  void playerOnechangeDices() {
    // playerOnefirstDice озгормосуно рандомду байлоо
    playerOnefirstDice = random.nextInt(6) + 1;
    // playerOnesecondDic озгормосуно рандомду байлоо
    playerOnesecondDice = random.nextInt(6) + 1;
    // setState абалдын озгорушу учун
    //чыккан санды кошуу
    sun1 = sun1 + playerOnefirstDice + playerOnesecondDice;

    setState(() {});
    result();
  }

  int playerSecondfirstDice = 1;
  int playerSecondsecondDice = 1;
  int sun2 = 0;

  void playerSecondchangeDices() {
    // playerOnefirstDice озгормосуно рандомду байлоо
    playerSecondfirstDice = random.nextInt(6) + 1;
    // playerOnesecondDic озгормосуно рандомду байлоо
    playerSecondsecondDice = random.nextInt(6) + 1;
    // setState абалдын озгорушу учун
    //чыккан санды кошуу
    sun2 = sun2 + playerSecondfirstDice + playerSecondsecondDice;

    setState(() {});
    result();
  }

  void result() {
    if (sun1 >= 50) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {
                    playerOnefirstDice = 1;
                    playerOnesecondDice = 1;
                    sun1 = 0;
                    playerSecondfirstDice = 1;
                    playerSecondsecondDice = 1;
                    sun2 = 0;
                    Navigator.pop(context);
                    setState(() {});
                  },
                  child: const Text(
                    'Exit',
                    style: TextStyle(
                        color: Color(
                          0xffb56b34,
                        ),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
              title: const Text(
                'Player 1: WINN',
                style: TextStyle(
                    color: Color(0xffb56b34),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            );
          });
    } else if (sun2 >= 50) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                'Player 2: WINN',
                style: TextStyle(
                    color: Color(
                      0xffb56b34,
                    ),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      playerOnefirstDice = 1;
                      playerOnesecondDice = 1;
                      sun1 = 0;
                      playerSecondfirstDice = 1;
                      playerSecondsecondDice = 1;
                      sun2 = 0;
                      Navigator.pop(context);
                      setState(() {});
                    },
                    child: const Text(
                      'Exit',
                      style: TextStyle(
                          color: Color(
                            0xffb56b34,
                          ),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6da5c0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'Dice Game',
          style: TextStyle(
            backgroundColor: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Player 1 : $sun1 ',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 18, 7, 96),
              indent: 65,
              endIndent: 65,
              thickness: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                SizedBox(
                    width: 200,
                    height: 200,
                    child: InkWell(
                        onTap: playerOnechangeDices,
                        child: SvgPicture.asset(
                            'assets/die_face_$playerOnefirstDice.svg'))),
                SizedBox(
                    width: 200,
                    height: 200,
                    child: InkWell(
                        onTap: playerOnechangeDices,
                        child: SvgPicture.asset(
                            'assets/die_face_$playerOnesecondDice.svg'))),
              ],
            ),
            Text(
              'Player 2 : $sun2 ',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 18, 7, 96),
              indent: 65,
              endIndent: 65,
              thickness: 5,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                SizedBox(
                    width: 200,
                    height: 200,
                    child: InkWell(
                        onTap: playerSecondchangeDices,
                        child: SvgPicture.asset(
                            'assets/die_face_$playerSecondfirstDice.svg'))),
                SizedBox(
                    width: 200,
                    height: 200,
                    child: InkWell(
                        onTap: playerSecondchangeDices,
                        child: SvgPicture.asset(
                            'assets/die_face_$playerSecondsecondDice.svg'))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
