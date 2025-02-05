import 'package:flutter/material.dart';

class CCMaterialPage extends StatefulWidget {
  const CCMaterialPage({super.key});

  @override
  State<CCMaterialPage> createState() => _CCMaterialPageState();
}

class _CCMaterialPageState extends State<CCMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 81;
    });
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 3.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(15),
    );

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text(
          "Currency Converter",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'INR ${result.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: "Enter amount to be converted in in USD:",
                hintStyle: const TextStyle(
                  color: Colors.black,
                ),
                prefixIcon: const Icon(Icons.monetization_on_outlined),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: border,
                enabledBorder: border,
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: convert,
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text("Click Me!!"),
            ),
          ),
        ]),
      ),
    );
  }
}
