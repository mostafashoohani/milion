import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:malionmalion/home.dart';
import 'package:malionmalion/model_porofil.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:intl/intl.dart';

class UserService {
  Future<void> setUserProfile(UserProfile userProfile) async {
    final Uri uri =
        Uri.parse('http://127.0.0.1:8000/mailion/user-profiles/create/');

    try {
      final http.Response response = await http.post(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(userProfile.toJson()),
      );

      if (response.statusCode == 200) {
        print('اطلاعات با موفقیت ذخیره شد.');
      } else {
        print('خطا در ذخیره اطلاعات. کد خطا: ${response.statusCode}');
        throw Exception('خطا در ذخیره اطلاعات');
      }
    } catch (error) {
      print('خطا در برقراری ارتباط: $error');
      throw Exception('خطا در برقراری ارتباط');
    }
  }
}

class PoroFail extends StatefulWidget {
  const PoroFail({Key? key}) : super(key: key);

  @override
  State<PoroFail> createState() => _PoroFailState();
}

class _PoroFailState extends State<PoroFail> {
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerLastName = TextEditingController();
  final TextEditingController _controllerDateOfBirth = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerPhoneNumber = TextEditingController();
  final TextEditingController _controllerNationalCode = TextEditingController();
  final TextEditingController _controllerAccountNumber =
      TextEditingController();
  final TextEditingController _controllerShabaNumber = TextEditingController();

  void submitForm() async {
    try {
      UserProfile userProfile = UserProfile(
        name: _controllerName.text,
        lastName: _controllerLastName.text,
        dateOfBirth:
            DateFormat("yyyy-MM-dd").parse(_controllerDateOfBirth.text),
        email: _controllerEmail.text,
        password: _controllerPassword.text,
        phoneNumber: _controllerPhoneNumber.text,
        nationalCode: _controllerNationalCode.text,
        accountNumber: _controllerAccountNumber.text,
        shabaNumber: _controllerShabaNumber.text,
      );

      UserService userService = UserService();
      await userService.setUserProfile(userProfile);

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Home(userProfile: userProfile),
        ),
      );
    } catch (e) {
      print('خطا در ارسال اطلاعات: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CircularParticle(
            height: 840,
            width: 380,
            awayRadius: 400,
            numberOfParticles: 400,
            speedOfParticles: 2,
            maxParticleSize: 5,
            particleColor: Colors.white60,
            awayAnimationDuration: Duration(seconds: 1),
            awayAnimationCurve: Curves.linearToEaseOut,
            isRandSize: true,
            isRandomColor: false,
            connectDots: false,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  SizedBox(height: 100),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "images/aks.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 114, left: 113),
                            child: Icon(
                              Icons.add_a_photo_rounded,
                              size: 40,
                              color: const Color.fromARGB(160, 255, 193, 7),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  buildTextField(
                      _controllerName, "نام خودر را وارد کنید", "Name"),
                  SizedBox(height: 5),
                  buildTextField(_controllerLastName,
                      "نام خانوادگی خود را وارد کنید", "Lastname"),
                  SizedBox(height: 5),
                  buildTextField(
                    _controllerDateOfBirth,
                    "تاریخ تولد خود را وارد کنید",
                    "Date of birth",
                  ),
                  SizedBox(height: 5),
                  buildTextField(
                      _controllerEmail, "ایمیل خود را وارد کنید", "Email"),
                  SizedBox(height: 5),
                  buildTextField(_controllerPassword,
                      "متن عبور خود را وارد کنید", "Password"),
                  SizedBox(height: 5),
                  buildTextField(_controllerPhoneNumber,
                      "شماره موبایل خود را وارد کنید", "Phone number"),
                  SizedBox(height: 5),
                  buildTextField(_controllerNationalCode,
                      "شماره ملی خود را وارد کنید", "National Code"),
                  SizedBox(height: 5),
                  buildTextField(_controllerAccountNumber,
                      "شماره حساب خود را وارد کنید", "Account number"),
                  SizedBox(height: 5),
                  buildTextField(_controllerShabaNumber,
                      "شماره شباء خود را وارد کنید", "Shaba number"),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: submitForm,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(150, 255, 255, 255),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.amber,
                            size: 30,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.amber,
                            size: 30,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.amber,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "تکمیل ثبت نام",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.amber,
                            size: 30,
                          ),
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.amber,
                            size: 30,
                          ),
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.amber,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextField(
      TextEditingController controller, String hintText, String labelText) {
    return TextField(
      style: TextStyle(color: Color.fromARGB(255, 245, 245, 244), fontSize: 20),
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color.fromARGB(255, 240, 41, 41)),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.amber),
        labelText: labelText,
        labelStyle: TextStyle(fontSize: 25),
      ),
    );
  }
}
