import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Navigation Basics',
    home: new FirstScreen(),
  ));
}


final myController = new TextEditingController();

class FirstScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('First Screen'),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: myController,
              decoration: new InputDecoration( hintText: "Ayyyy lmao",
                labelStyle:  new TextStyle( color: Colors.red),

              )
              ,
            ),
            new RaisedButton(onPressed: ()
              {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new SecondScreen()));
                print(myController.toString());

              }
    )])));
  }
}




            /*
            child: new TextField(),
            child: new RaisedButton(
              child: new Text('Launch new screen'),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new SecondScreen()),
                );
              },
            )),
      ),
        );
  }
}
*/

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(myController.text),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text(myController.text),
        ),
      ),
    );
  }
}
