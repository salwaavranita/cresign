// To parse this JSON data, do
//
//     final questionsModel = questionsModelFromJson(jsonString);

import 'dart:convert';

QuestionsModel questionsModelFromJson(String str) => QuestionsModel.fromJson(json.decode(str));

String questionsModelToJson(QuestionsModel data) => json.encode(data.toJson());

class QuestionsModel {
  int id;
  String question;
  String category;
  List<String> options;
  String answer;

  QuestionsModel({
    required this.id,
    required this.question,
    required this.category,
    required this.options,
    required this.answer,
  });

  factory QuestionsModel.fromJson(Map<String, dynamic> json) => QuestionsModel(
    id: json["id"],
    question: json["question"],
    category: json["category"],
    options: List<String>.from(json["options"].map((x) => x)),
    answer: json["answer"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "question": question,
    "category": category,
    "options": List<dynamic>.from(options.map((x) => x)),
    "answer": answer,
  };
}
