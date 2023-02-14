import 'package:flutter/material.dart';


import 'CardContent.dart';

class ProgramCard extends StatelessWidget {
  final String id;
  final String date;
  final String time;
  final String img;

  ProgramCard(
      {required String this.id,
      Key? key,
      required this.date,
      required this.time,
      required this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white30,
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: SizedBox(
        height: 100,
        child: CardContent(
          id: id,
          date: date,
          time: time,
          img: img,
        ),
      ),
    );
  }
}
