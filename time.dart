import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: FirstPage(),
    ),
  );
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int changesCount = 0;
  List<Color> containerColors = [
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صفحه اول'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                // اگر تعداد تغییرات به اندازه تعداد کانتینرها رسیده باشد
                if (changesCount < containerColors.length) {
                  bool result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );

                  if (result != null && result) {
                    setState(() {
                      // افزایش تعداد تغییرات
                      changesCount++;
                      // تغییر رنگ کانتینر به زرد
                      int currentIndex = changesCount - 1;
                      containerColors[currentIndex] = Colors.yellow;
                    });
                  }
                }
              },
              child: Text('برو به صفحه دوم'),
            ),
            SizedBox(height: 20),
            Text('تعداد تغییرات: $changesCount',
                style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            // استفاده از 5 کانتینر با ابعاد خاص و رنگ‌های متغیر
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                5,
                (index) => Container(
                  width: 30,
                  height: 30,
                  color: containerColors[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صفحه دوم'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // ارسال اطلاعات به صفحه اول و بستن صفحه دوم
                Navigator.of(context).pop(true);
              },
              child: Text('ارسال اطلاعات به صفحه اول'),
            ),
          ],
        ),
      ),
    );
  }
}
