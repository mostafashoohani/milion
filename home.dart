import 'package:flutter/material.dart';
import 'package:malionmalion/2.dart';
import 'package:malionmalion/model_porofil.dart';
import 'package:malionmalion/modl_didari/sake.dart';
import 'package:particles_flutter/particles_flutter.dart';

class Home extends StatefulWidget {
  final UserProfile? userProfile;

  const Home({Key? key, required this.userProfile}) : super(key: key);

  @override
  State<Home> createState() => _HomeState(userProfile: userProfile);
}

class _HomeState extends State<Home> {
  final UserProfile? userProfile;

  _HomeState({required this.userProfile});

  int changesCount = 0;
  List<Color> containerColors = List.filled(5, Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          CircularParticle(
            height: 840,
            width: 380,
            awayRadius: 400,
            numberOfParticles: 400,
            speedOfParticles: 2,
            maxParticleSize: 30,
            particleColor: Color.fromARGB(153, 255, 12, 12),
            awayAnimationDuration: Duration(seconds: 1),
            awayAnimationCurve: Curves.linearToEaseOut,
            isRandSize: true,
            isRandomColor: false,
            connectDots: false,
          ),
          Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => Container(
                    width: 30,
                    height: 30,
                    color: containerColors[index],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 25, top: 10),
                            child: TransparentCoinContainer(
                              userCoins: widget.userProfile?.sake ?? 0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 0),
                            child: Image.asset(
                              "images/markm.png",
                              width: 50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 90),
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: Column(
                      children: [
                        Text(
                          widget.userProfile?.name ?? "نام پیشفرض",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              widget.userProfile?.cup?.toString() ?? "0",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image.asset("images/kap.png"),
                          ],
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 115),
                              child: Image.asset(
                                "images/aks.jpg",
                                fit: BoxFit.fill,
                                width: 70,
                                height: 70,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              if (changesCount < containerColors.length) {
                                bool result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Mach2(),
                                  ),
                                );

                                if (result != null && result) {
                                  setState(() {
                                    changesCount++;
                                    int currentIndex = changesCount - 1;
                                    containerColors[currentIndex] =
                                        Colors.yellow;
                                  });
                                }
                              }
                            },
                            child: Image.asset(
                              "images/free1.png",
                              width: 150,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/50.png",
                              width: 150,
                            ),
                            Image.asset(
                              "images/100.png",
                              width: 150,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 300),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 233),
                                  child: Image.asset(
                                    "images/51.png",
                                    width: 150,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 115),
                                  child: Image.asset(
                                    "images/101.png",
                                    width: 150,
                                  ),
                                ),
                                Image.asset(
                                  "images/200.png",
                                  width: 150,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("images/chat.png", width: 50),
                      Image.asset("images/markt.png", height: 70, width: 50),
                      Image.asset("images/aval.png", width: 50),
                      Image.asset("images/inbax.png", width: 50),
                      Image.asset("images/cap.png", height: 50, width: 50),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("images/saye.png", width: 50),
                      Image.asset("images/saye.png", width: 50),
                      Image.asset("images/saye.png", width: 50),
                      Image.asset("images/saye.png", width: 50),
                      Image.asset("images/saye.png", width: 50),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
