import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:malionmalion/ghavanin.dart';
import 'package:malionmalion/home.dart';
import 'package:malionmalion/model_porofil.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ScreenView extends StatefulWidget {
  const ScreenView({Key? key}) : super(key: key);

  @override
  _ScreenViewState createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  late UserProfile _userProfile;

  Future<void> _getUserProfile() async {
    final response = await http
        .get(Uri.parse('http://127.0.0.1:8000/mailion/user-profiles/'));

    if (response.statusCode == 200) {
      setState(() {
        _userProfile = UserProfile.fromJson(jsonDecode(response.body));
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('خطا در دریافت اطلاعات: ${response.statusCode}'),
        ),
      );
      return;
    }
  }

  late String _appVersion = '1.0.0';

  Future<void> navigateToHome() async {
    try {
      final response = await http
          .get(Uri.parse('http://127.0.0.1:8000/mailion/user-profiles/'));
      if (response.statusCode == 200) {
        setState(() {
          _userProfile = UserProfile.fromJson(json.decode(response.body));
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('خطا در دریافت اطلاعات: ${response.statusCode}'),
          ),
        );
        return;
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('خطا در دریافت اطلاعات: $e'),
        ),
      );
      return;
    }

    if (_appVersion == Version().version) {
      // احراز هویت را انجام دهید
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Home(userProfile: _userProfile),
        ),
      );
    } else {
      // به صفحه قوانین بروید
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => ghanon(),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () async {
      await navigateToHome();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Image.asset("images/markm.png"),
                SizedBox(
                  height: 80,
                ),
                SpinKitWaveSpinner(
                  color: Color.fromARGB(255, 240, 255, 23),
                  size: 70.0,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
