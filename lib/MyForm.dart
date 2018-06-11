
import 'package:flutter/material.dart';

// Define a Custom Form Widget
class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => new _MyFormState();
}

// Define a corresponding State class. This class will hold the data related to
// our Form.
class _MyFormState extends State<MyForm> {
  // Create a text controller. We will use it to retrieve the current value
  // of the TextField!
  final myController = new TextEditingController();

  @override
  void initState() {
    super.initState();

    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is removed from the Widget tree
    myController.removeListener(_printLatestValue);
    myController.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print("Second text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Retrieve Text Input'),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            new TextField(
              onChanged: (text) {
                print("First text field: $text");
              },
            ),
            new TextField(
              controller: myController,
            ),
          ],
        ),
      ),
    );
  }
}