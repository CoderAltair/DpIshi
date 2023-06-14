import 'package:flutter/material.dart';
import 'core/theme/color.dart';
import 'game15/enter_game.dart';
import 'game_control.dart';
import 'questions/english_games_creen.dart';
import 'test_quiz/screens/quiz/quiz_screen.dart';
import 'tic_tack/tic_tak_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    GameScreen(),
    Games(),
    QuizScreen(),
    Game15EnterScreen(),
    QuestionsEnglish()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
  
      appBar: AppBar(
        backgroundColor: MainColor.secondaryColor,
        title: const Center(child: Text('AVT GAMES')),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/xo.png')),
            label: 'Quizz',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/ca.png')),
            label: 'GameCard',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/test.png')),
            label: 'Test',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/dices.png')),
            label: '15',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/eng.png')),
            label: 'Question',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.deepPurple,
        selectedItemColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }
}
