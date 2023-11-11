import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrenctConverter extends StatelessWidget {
  const CurrenctConverter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.monetization_on_outlined,
                  color: Colors.black,
                ),
                hintText: 'Please enter the amount in usd',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
