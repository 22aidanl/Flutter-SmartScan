import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController serialNumberController = TextEditingController();
  String serialNumber = '';

  @override
  void initState() {
    super.initState();
  }

  Future<void> startBarcodeScanStream() async {
    var stream = FlutterBarcodeScanner.getBarcodeStreamReceiver(
        '#ff6666', 'Cancel', true, ScanMode.BARCODE)!;
    StreamSubscription? subscription;
    subscription = stream.listen((barcode) {
      if (barcode.substring(0, 2) == 'HH') {
        setState(() {
          serialNumber = barcode;
          serialNumberController.text = barcode;
        });
        subscription!.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Serial Number Scan'),
          ),
          body: Center(
              child: Column(children: <Widget>[
            Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: serialNumberController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Serial Number',
                  ),
                  onChanged: (text) {
                    setState(() {
                      serialNumber = text;
                    });
                  },
                )),
            Container(
                alignment: Alignment.center,
                child: Flex(
                    direction: Axis.vertical,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                          onPressed: () => startBarcodeScanStream(),
                          child: Text('Scan for Barcode')),
                    ]))
          ]))),
    );
  }
}
