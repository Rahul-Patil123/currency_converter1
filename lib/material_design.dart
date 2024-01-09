import 'package:flutter/material.dart';

class CCMaterialPage1State extends StatefulWidget {
  const CCMaterialPage1State({super.key});
  @override
  State<CCMaterialPage1State> createState() => _CCMaterialPage();
}

class _CCMaterialPage extends State<CCMaterialPage1State> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 700,
        title: const Text(
          'R Currency Converter',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR. ${result.toString()}',
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  hintText: 'Enter In USD',
                  hintStyle: TextStyle(color: Colors.white60),
                  prefixIcon: Icon(Icons.attach_money_sharp),
                  prefixIconColor: Colors.amber,
                  filled: true,
                  fillColor: Colors.white30,
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.white),
                  //   borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(30),
                  //     bottomRight: Radius.circular(20),
                  //   ),
                  // ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: false,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = double.parse(textEditingController.text) * 83.1468;
                });
              },
              onHover: (value) => 'USD -> INR',
              style: const ButtonStyle(
                elevation: MaterialStatePropertyAll(15),
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                foregroundColor: MaterialStatePropertyAll(Colors.black),
              ),
              child: const Text(
                'CONVERT',
              ),
            )
          ],
        ),
      ),
    );
  }
}
