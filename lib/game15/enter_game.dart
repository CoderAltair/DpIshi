import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'about_game.dart';
import 'game15.dart';

class Game15EnterScreen extends StatelessWidget {
  const Game15EnterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: const BoxDecoration(),
              width: 250,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Game15()));
                },
                child: const Text(
                  "Yangi o`yin",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                      letterSpacing: 2),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              width: 250,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    animType: AnimType.scale,
                    dialogType: DialogType.info,
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Text(
                            "O`yin haqida tushuncha",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Text(
                            'Ushbu o`yinda sizga 15 ta raqam beriladi. Ushbu raqamlar random generatsiya qilingan bo`ladi. Sizning vazifangiz ushbu aqamlarni ketma-ket tartiblab chiqishingiz kerak bo`ladi. Eslatma uchun siz o`yinni qancha vaqtta yutganingizni ko`rishingiz mumkin hamda siz o`yinni qayta boshlash imkoniyatiga egasiz !!!',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    title: 'This is Ignored',
                    desc: 'This is also Ignored',
                    btnOkOnPress: () {},
                  ).show();
                },
                child: const Text(
                  "O`yin qoidalari",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                      letterSpacing: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
