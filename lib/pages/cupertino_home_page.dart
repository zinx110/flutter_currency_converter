import "package:flutter/cupertino.dart";

class CupertinoHomePage extends StatefulWidget {
  const CupertinoHomePage({super.key});

  @override
  State<CupertinoHomePage> createState() => _CupertinoHomePage();
}

class _CupertinoHomePage extends State<CupertinoHomePage> {
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
  Widget build(BuildContext context) {
    debugPrint("build fn");

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text("Curreny Converter"),
      ),
      backgroundColor: const Color.fromRGBO(38, 167, 184, 1),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
            CupertinoTextField(
              controller: textEditingController,
              style: const TextStyle(
                color: CupertinoColors.black,
              ),
              placeholder: "Please enter the amount in usd",
              prefix: const Icon(CupertinoIcons.money_dollar),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(5),
              ),
              keyboardType: const TextInputType.numberWithOptions(
                  decimal: true, signed: false),
            ),
            const SizedBox(
              height: 10,
            ),
            CupertinoButton(
              color: CupertinoColors.black,
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
