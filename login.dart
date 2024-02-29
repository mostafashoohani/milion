// import 'package:flutter/material.dart';
// import 'package:malionmalion/home.dart';
// import 'package:malionmalion/myString.dart';
// import 'package:particles_flutter/particles_flutter.dart';

// class login extends StatefulWidget {
//   login({super.key});

//   @override
//   State<login> createState() => _loginState();
// }

// class _loginState extends State<login> {
//   TextEditingController controllerName = TextEditingController();

//   TextEditingController controllerPassword = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         body: SingleChildScrollView(
//           child: Stack(
//             children: [
//               CircularParticle(
//                 height: 840,
//                 width: 390,
//                 awayRadius: 400,
//                 numberOfParticles: 400,
//                 speedOfParticles: 2,
//                 maxParticleSize: 5,
//                 particleColor: Colors.white60,
//                 awayAnimationDuration: Duration(seconds: 1),
//                 awayAnimationCurve: Curves.linearToEaseOut,
//                 isRandSize: true,
//                 isRandomColor: false,
//                 connectDots: false,
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: 170,
//                   ),
//                   Center(
//                     child: Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Color.fromARGB(249, 131, 127, 127)),
//                       width: 350,
//                       height: 480,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(children: [
//                           Text(
//                             "login",
//                             style: TextStyle(fontSize: 30),
//                           ),
//                           SizedBox(
//                             height: 90,
//                           ),
//                           TextField(
//                             controller: controllerName,
//                             decoration: InputDecoration(
//                                 border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide(
//                                         color: Color.fromARGB(255, 0, 0, 0))),
//                                 focusedBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide(
//                                         color:
//                                             Color.fromARGB(255, 240, 41, 41))),
//                                 hintText: "نام خود را وارد کنید",
//                                 labelText: "Name"),
//                           ),
//                           SizedBox(
//                             height: 40,
//                           ),
//                           TextField(
//                             controller: controllerPassword,
//                             decoration: InputDecoration(
//                                 border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide(
//                                         color: Color.fromARGB(255, 0, 0, 0))),
//                                 focusedBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide(
//                                         color:
//                                             Color.fromARGB(255, 240, 41, 41))),
//                                 hintText: "متن عبور خود را وارد کنید",
//                                 labelText: "Password"),
//                           ),
//                           SizedBox(height: 10),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               TextButton(
//                                   onPressed: () {},
//                                   child: Text(
//                                     "فراموشی رمز",
//                                     style: TextStyle(
//                                         color: const Color.fromARGB(
//                                             200, 255, 193, 7)),
//                                   )),
//                               TextButton(
//                                   onPressed: () {},
//                                   child: Text("ثبت نام",
//                                       style: TextStyle(
//                                           color: const Color.fromARGB(
//                                               200, 255, 193, 7)))),
//                             ],
//                           )
//                         ]),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Container(
//                     width: 250,
//                     height: 50,
//                     color: Colors.white,
//                     child: TextButton.icon(
//                         style: ButtonStyle(
//                             backgroundColor:
//                                 MaterialStateProperty.all(Colors.black54),
//                             shape: MaterialStatePropertyAll<
//                                     RoundedRectangleBorder>(
//                                 RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10)))),
//                         onPressed: () {
//                           setState(() {
//                             Navigator.of(context as BuildContext).push(
//                                 MaterialPageRoute(
//                                     builder: (context) => Home()));
//                             // fomol_vorod();
//                             // controllerName.clear();
//                             // controllerPassword.clear();
//                           });
//                         },
//                         icon: Icon(
//                           Icons.arrow_back,
//                           color: Color.fromARGB(195, 255, 224, 130),
//                           size: 40,
//                         ),
//                         label: Text("ورود ", style: TextStyle(fontSize: 25))),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ));
//   }

//   fomol_vorod() {
//     if (my_String.Name == controllerName.value.toString()) {
//       if (my_String.Password == controllerPassword.value.toString()) {
//         Navigator.of(context as BuildContext)
//             .push(MaterialPageRoute(builder: (context) => Home()));
//       }
//     } else {
//       _asnak_bar(context);
//     }
//   }

//   void _asnak_bar(context) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       content: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Text(my_String.Snak_obori,
//               style: TextStyle(fontSize: 20, color: Colors.white)),
//         ],
//       ),
//       backgroundColor: Colors.black26,
//       duration: Durations.extralong3,
//     ));
//   }
// }
