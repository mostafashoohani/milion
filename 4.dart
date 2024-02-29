import 'package:flutter/material.dart';

import 'package:particles_flutter/particles_flutter.dart';

class mach4 extends StatefulWidget {
  final TextEditingController controllerProfileName;

  mach4(this.controllerProfileName);
  @override
  State<mach4> createState() => _mach4State();
}

class _mach4State extends State<mach4> {
   @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          // اگر بخواهید از کشیدن به چپ جلوگیری کنید، true را برگردانید.
          return false;
        },
        child: Scaffold(
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
          Column(children: [
            SizedBox(
              height: 300,
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
            )
          ])
        ]))));
  }
}
