import 'package:flutter/material.dart';

class CurrenctConverter extends StatefulWidget {
  const CurrenctConverter({super.key});

  @override
  State<CurrenctConverter> createState() => _CurrenctConverterState();
}

class _CurrenctConverterState extends State<CurrenctConverter> {
  double result = 0;
  final TextEditingController inputText = TextEditingController();
  void convert() {
    setState(() {
      result = double.parse(inputText.text) * 1174;
    });
  }

  @override
  void dispose() {
    inputText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final boder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.circular(10),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Currency converter'),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "NG ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}",
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: inputText,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.black,
                  ),
                  hintText: 'Please enter the amount in usd',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: boder,
                  enabledBorder: boder,
                ),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text('Convert'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
