import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class AboutGame15 extends StatefulWidget {
  const AboutGame15({super.key});

  @override
  State<AboutGame15> createState() => _AboutGame15State();
}

class _AboutGame15State extends State<AboutGame15> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "O`yin haqida tushuncha",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
        )),
      ),
    );
  }
}
