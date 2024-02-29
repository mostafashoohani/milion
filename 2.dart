import 'package:flutter/material.dart';
import 'package:malionmalion/mozo.dart';
import 'package:malionmalion/model_porofil.dart';
import 'package:particles_flutter/particles_flutter.dart';

class Mach2 extends StatefulWidget {
  @override
  State<Mach2> createState() => _Mach2State();
}

class _Mach2State extends State<Mach2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.of(context as BuildContext).push(
        MaterialPageRoute(builder: (context) => mozo()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    UserProfile userProfile = UserProfile(name: "mostafa");

    return WillPopScope(
      onWillPop: () async {
        // اگر بخواهید از کشیدن به چپ جلوگیری کنید، true را برگردانید.
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.red,
        body: SingleChildScrollView(
          child: Stack(
            children: [
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
                    height: 350,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          userProfile.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Stack(
                          children: [
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
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Stack(
                          children: [
                            Text(
                              "v",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text(
                                "s",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Stack(
                          children: [
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
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          userProfile.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
