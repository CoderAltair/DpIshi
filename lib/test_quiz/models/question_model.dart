class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sampleData = [
  {
    "id": 1,
    "question": "O`zbekiston Respublikasi gerbi qachon tasdiqlangan ?",
    "options": [
      '1991-yil 2-iyul',
      '1992-yil 2-iyul',
      '1992-yil 1-iyul',
      '1991-yil 8-dekabr'
    ],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "O`zbekiston Respublikasi madhiyasi qachon tasdiqlangan ?",
    "options": [
      '1992-yil 2-iyul',
      '1991-yil 2-iyul',
      '1992-yil 10-dekabr',
      '1991-yil 8-dekabr'
    ],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question":
        "O`zbekiston Respublikasi konstitutsiyasi qachon tasdiqlangan ?",
    "options": [
      '1992-yil 8-dekabr',
      '1992-yil 2-iyul',
      '1991-yil 2-iyul',
      '1991-yil 8-dekabr'
    ],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "Yurtimiz bilan chegaradosh bo`lmagan mamlakatni toping ?",
    "options": [
      'Qozog`iston',
      'Qirg`iziston',
      'Tojikiston',
      'Rossiya Federatsiyasi',
    ],
    "answer_index": 3,
  },
];
