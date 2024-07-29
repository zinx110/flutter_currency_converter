import 'package:flutter/material.dart';

class MaterialHomePage extends StatefulWidget {
  const MaterialHomePage({super.key});
  // {
  //   debugPrint('constructor called');
  // }

  @override
  State<MaterialHomePage> createState() {
    return _MaterialHomePage();
  }
}

class _MaterialHomePage extends State<MaterialHomePage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    result = double.parse(textEditingController.text) * 115;
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    debugPrint("init state");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build fn");
    const outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(0, 0, 0, 0.5),
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.all(Radius.circular(7)),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text("Curreny Converter"),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromRGBO(38, 167, 184, 1),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(8),
                child: const Text(
                  "Material App",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(8),
                child: Text(
                  "BDT ${result.toStringAsFixed(2)}",
                  style: const TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
            TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
              decoration: const InputDecoration(
                hintText: "Please enter the amount in usd",
                hintStyle: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                ),
                prefixIcon: Icon(
                  Icons.monetization_on,
                ),
                prefixIconColor: Color.fromRGBO(0, 0, 0, 1),
                fillColor: Color.fromRGBO(255, 255, 255, 1),
                filled: true,
                focusedBorder: outlineInputBorder,
                enabledBorder: outlineInputBorder,
              ),
              keyboardType: const TextInputType.numberWithOptions(
                  decimal: true, signed: false),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: (const Color.fromRGBO(0, 140, 120, 1)),
                foregroundColor: (Colors.white),
                minimumSize: (const Size(double.infinity, 50)),
                shape: (RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
              ),
              onPressed: convert,
              child: const Text(
                'Convert',
                style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
