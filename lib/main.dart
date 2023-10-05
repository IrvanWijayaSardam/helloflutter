import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Hello World!'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Show a toast when the button is clicked
                  Fluttertoast.showToast(
                    msg: 'Hello Flutter',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                  );
                },
                child: Text('Show Toast'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
