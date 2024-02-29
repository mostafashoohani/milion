import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class mach16 extends StatefulWidget {
  final TextEditingController controllerProfileName;

  mach16(this.controllerProfileName);
  @override
  State<mach16> createState() => _mach16State();
}

class _mach16State extends State<mach16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: SingleChildScrollView(
            child: Stack(children: [
          CircularParticle(
            height: 840,
            width: 390,
            awayRadius: 500,
            numberOfParticles: 400,
            speedOfParticles: 2,
            maxParticleSize: 15,
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
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      widget.controllerProfileName.text,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          // child: Image.asset(
                          //   "images/aks.jpg",
                          //   fit: BoxFit.fill,
                          // ),
                          child: Karbar(aks: [
                            "images/aks.jpg",
                          ]), // مقداردهی به پارامتر aks
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 15,
                    ),
                    Stack(
                      children: [
                        Text("v",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text("s",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 10,
                    ),
                    Text(widget.controllerProfileName.text,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      widget.controllerProfileName.text,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 15,
                    ),
                    Stack(
                      children: [
                        Text("v",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text("s",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 10,
                    ),
                    Text(widget.controllerProfileName.text,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      widget.controllerProfileName.text,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 15,
                    ),
                    Stack(
                      children: [
                        Text("v",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text("s",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 10,
                    ),
                    Text(widget.controllerProfileName.text,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      widget.controllerProfileName.text,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 15,
                    ),
                    Stack(
                      children: [
                        Text("v",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text("s",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 10,
                    ),
                    Text(widget.controllerProfileName.text,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      widget.controllerProfileName.text,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 15,
                    ),
                    Stack(
                      children: [
                        Text("v",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text("s",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 10,
                    ),
                    Text(widget.controllerProfileName.text,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      widget.controllerProfileName.text,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 15,
                    ),
                    Stack(
                      children: [
                        Text("v",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text("s",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 10,
                    ),
                    Text(widget.controllerProfileName.text,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      widget.controllerProfileName.text,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 15,
                    ),
                    Stack(
                      children: [
                        Text("v",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text("s",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 10,
                    ),
                    Text(widget.controllerProfileName.text,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      widget.controllerProfileName.text,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 15,
                    ),
                    Stack(
                      children: [
                        Text("v",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text("s",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Stack(children: [
                      Image.asset(
                        "images/ghab.png",
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            "images/aks.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 10,
                    ),
                    Text(widget.controllerProfileName.text,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ],
                ),
              ),
            ],
          )
        ])));
  }
}

class Karbar extends StatelessWidget {
  final List<String> aks;

  const Karbar({
    Key? key,
    required this.aks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "aks:${aks.join(",")}",
      fit: BoxFit.fill,
    );
  }
}
