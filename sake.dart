import 'package:flutter/material.dart';

class TransparentCoinContainer extends StatelessWidget {
  final int userCoins;

  TransparentCoinContainer({required this.userCoins});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.amber, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(8),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: (userCoins / 50) * 200,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.5),
              border: Border.all(color: Colors.amber),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Positioned(
          left: 30,
          child: Container(
            padding: EdgeInsets.all(8),
            child: Text(
              ' $userCoins',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
