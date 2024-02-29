import 'package:flutter/material.dart';
import 'package:malionmalion/model_porofil.dart';

class Soal extends StatefulWidget {
  @override
  State<Soal> createState() => _SoalState();
}

class _SoalState extends State<Soal> {
  @override
  Widget build(BuildContext context) {
    Question question = Question(
        soal: null, javab1: null, javab2: null, javab3: null, javab4: null);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // ... بقیه کد همان‌طور که بود ...

          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "images/ghabso.png",
                    width: 350,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, right: 20),
                    child: Container(
                      width: 300,
                      height: 100,
                      child: Text(
                        question.soal.toString(),
                        style: TextStyle(fontSize: 18),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "images/ghabja.png",
                      width: 300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 10),
                    child: Text(
                      " 1 - ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 55, top: 10),
                    child: Text(
                      question.javab1.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Image.asset(
                      "images/ghabja.png",
                      width: 300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 92, top: 3),
                    child: Text(
                      " 2 - ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 125, top: 2),
                    child: Text(
                      question.javab2.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5, top: 8),
                    child: Image.asset(
                      "images/ghabja.png",
                      width: 300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 10),
                    child: Text(
                      " 3 - ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 55, top: 10),
                    child: Text(
                      question.javab3.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 80),
                    child: Image.asset(
                      "images/ghabja.png",
                      width: 300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 95, top: 10),
                    child: Text(
                      " 4 - ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 130, top: 10),
                    child: Text(
                      question.javab4.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
