import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_smart_scan/flutter_smart_scan.dart';

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
      // Exit the scan when the barcode matches a certain condition
      // In this case, the barcode starts with "HH", so it matches the format of
      // a serial number.
      if (barcode.substring(0, 2) == 'HH') {
        // Update the serial number variable and the corresponding text field.
        setState(() {
          serialNumber = barcode;
          serialNumberController.text = barcode;
        });
        // Cancel the StreamSubscription to exit the camera scanning view.
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
