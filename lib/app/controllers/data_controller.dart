import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:faker/faker.dart';

class DataController extends GetxController {
  List dummyLearn = [
    {
      'image': 'images/Ellipse_14.png',
      'title': 'IT’S FREE',
      'subtitle': 'Our courses are free of charge!',
    },
    {
      'image': 'images/Ellipse_15.png',
      'title': 'QUALITY LEARNING',
      'subtitle': 'Our courses is structured learning',
    },
    {
      'image': 'images/Ellipse_16.png',
      'title': 'TAKE IT TO THE NEXT LEVEL',
      'subtitle': 'Build your career with skills employers seek',
    },
  ];

  List dummyAboutUs = [
    {
      'title': 'Intuitive Design',
      'message':
          'I am officially a genious and it’s all thanks to the great course I took on CreSign',
      'name': "Dinda aulia",
      'major': 'Information System ’20'
    },
    {
      'title': 'Amazing Course',
      'message':
          'I am officially a genious and it’s all thanks to the great course I took on CreSign',
      'name': "Wijaya kusuma",
      'major': 'Information Technology ’19'
    },
    {
      'title': 'Great Institutors',
      'message':
          'I am officially a genious and it’s all thanks to the great course I took on CreSign',
      'name': "AlVARO MAHENDRA",
      'major': 'Information Technology Education ‘21'
    },
    {
      'title': 'Inspiring Course',
      'message':
          'I am officially a genious and it’s all thanks to the great course I took on CreSign',
      'name': "AYU DISHA",
      'major': 'Information System ‘21'
    },
  ];

  List dummyCompany = [
    {"title": "About"},
    {"title": "Career"},
    {"title": "Support"},
    {"title": "Term of Service"},
    {"title": "Cookie Policy"},
  ];

  List dummyStudent = [
    {"title": "Design Education"},
    {"title": "Design Portofolio"},
    {"title": "Creative process"},
  ];

  List dummyDesigner = [
    {"title": "Post a design"},
    {"title": "Freelance"},
  ];


  List dummyDesign = List.generate(12, (index) {
    Random random = Random();
    return {
      "name": "Lorem ipsum ${index + 1}",
      "images": "design/design${index + 1}.png",
      "profile": "person/person${index + 1}.png",
      "likes": random.nextInt(100).toString(),
      "views": random.nextInt(100).toString(),
    };
  });

  ScrollController scrollController = ScrollController();

  void scrollTo(double offset) {
    scrollController.animateTo(
      offset,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
