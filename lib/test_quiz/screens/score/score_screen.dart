import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../bottom_navigator.dart';
import '../../constants/app_styles.dart';
import '../../controllers/question_controller.dart';
import 'chart.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    QuestionController qnController = Get.put(QuestionController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Natijangiz",
            style: AppTextStyle.primaryB()
                .copyWith(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ism:Azizbek", style: AppTextStyle.title(size: 25)),
                Text("Jami savollar:${qnController.questions.length}",
                    style: AppTextStyle.title(size: 25)),
                Text("To`gri javoblar :${qnController.numOfCorrectAns}",
                    style: AppTextStyle.title(size: 25)),
                Text(
                    "Xato javoblar :${qnController.questions.length - qnController.numOfCorrectAns}",
                    style: AppTextStyle.title(size: 25)),
                ChartScreen(
                    tj: (qnController.numOfCorrectAns /
                            qnController.questions.length)
                        .toDouble(),
                    xj: (qnController.questions.length -
                            qnController.numOfCorrectAns) /
                        (qnController.questions.length).toDouble()),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Card(
                    elevation: 4,
                    color: Theme.of(context).colorScheme.onSecondary,
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Sizning natijangiz',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Siz ${qnController.questions.length} ta savoldan ${qnController.numOfCorrectAns} tasiga to`g`ri ${qnController.questions.length - qnController.numOfCorrectAns} tasiga xato javob berdingiz',
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Transform.translate(
                                  offset: const Offset(-5, 0),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const Home();
                                      }), (route) => false);
                                    },
                                    child: const Text(
                                      'Продолжить',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.asset(
                                qnController.numOfCorrectAns != 4
                                    ? 'assets/ikki.jpg'
                                    : 'assets/bew.jpg',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
