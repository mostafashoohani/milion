import 'package:flutter/material.dart';
import 'package:malionmalion/model_porofil.dart';
import 'package:malionmalion/soal.dart';
import 'package:particles_flutter/particles_flutter.dart';

class mozo extends StatefulWidget {
  @override
  State<mozo> createState() => _mozoState();
}

class _mozoState extends State<mozo> {
  @override
  Widget build(BuildContext context) {
    UserProfile userProfile = UserProfile(
      name: "نام پیشفرض",
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          CircularParticle(
            height: 840,
            width: 380,
            awayRadius: 100,
            numberOfParticles: 400,
            speedOfParticles: 2,
            maxParticleSize: 30,
            particleColor: Colors.black,
            awayAnimationDuration: Duration(seconds: 1),
            awayAnimationCurve: Curves.linearToEaseOut,
            isRandSize: true,
            isRandomColor: false,
            connectDots: false,
          ),
          Column(
            children: [
              SizedBox(
                height: 130,
              ),
              Stack(
                children: [
                  Image.asset(
                    "images/ghabkol.png",
                    width: 450,
                    height: 140,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, right: 220),
                    child: Text(
                      userProfile.name,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 300),
                    child: Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 70,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 60,
                          height: 60,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28, right: 185),
                    child: Text("s",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 190, top: 20),
                    child: Stack(
                      children: [
                        Text("v",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80, top: 50),
                    child: Text(
                      userProfile.name,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 10),
                    child: Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 70,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 60,
                          height: 60,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90, right: 165),
                    child: Stack(
                      children: [
                        Image.asset(
                          "images/ghabtim.png",
                          width: 60,
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18),
                          child: Text(
                            "30",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Soal(),
                        ));
                      },
                      child: Container(
                        child: Stack(
                          children: [
                            Image.asset(
                              "images/ghab2.png",
                              width: 200,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2, right: 28),
                              child: Image.asset(
                                "images/almi.png",
                                width: 45,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 90),
                              child: Text(
                                "علمی",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.amber),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Soal(),
                          ));
                        },
                        child: Container(
                          child: Stack(
                            children: [
                              Image.asset(
                                "images/ghab2.png",
                                width: 200,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 20,
                                ),
                                child: Image.asset(
                                  "images/farhang.png",
                                  width: 45,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 75),
                                child: Text(
                                  "فرهنگی",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.amber),
                                ),
                              ),
                            ],
                          ),
                        )),
                  )
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Soal(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Image.asset(
                            "images/ghab2.png",
                            width: 200,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30, top: 2),
                            child: Image.asset(
                              "images/tarikhi.png",
                              width: 40,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 80),
                            child: Text(
                              "تاریخی",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.amber),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Soal(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Image.asset(
                            "images/ghab2.png",
                            width: 200,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30, top: 2),
                            child: Image.asset(
                              "images/sinam.png",
                              width: 45,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 85),
                            child: Text(
                              "سینما",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.amber),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Soal(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Image.asset(
                            "images/ghab2.png",
                            width: 200,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, top: 2),
                            child: Image.asset(
                              "images/sports.png",
                              width: 45,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 75),
                            child: Text(
                              "ورزشی",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.amber),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Soal(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Image.asset(
                            "images/ghab2.png",
                            width: 200,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 26, top: 4),
                            child: Image.asset(
                              "images/sargarmi.png",
                              width: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 70),
                            child: Text(
                              "سرگرمی",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.amber),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          )
        ]));
  }
}
