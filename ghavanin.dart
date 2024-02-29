import 'package:flutter/material.dart';
import 'package:malionmalion/poroFil.dart';
import 'package:particles_flutter/particles_flutter.dart';

class ghanon extends StatelessWidget {
  const ghanon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(children: [
        CircularParticle(
          height: 840,
          width: 380,
          awayRadius: 400,
          numberOfParticles: 400,
          speedOfParticles: 2,
          maxParticleSize: 16,
          particleColor: Colors.white60,
          awayAnimationDuration: Duration(seconds: 1),
          awayAnimationCurve: Curves.linearToEaseOut,
          isRandSize: true,
          isRandomColor: false,
          connectDots: false,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12),
                      child: Text(
                        "قوانین میلیون میلیون",
                        style: TextStyle(fontSize: 30),
                      )),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 360,
                    height: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white70),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/navshte.png",
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context as BuildContext).push(
                              MaterialPageRoute(
                                  builder: (context) => PoroFail()));
                        },
                        child: Text(
                          "قوانین را قبول میکنم",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
