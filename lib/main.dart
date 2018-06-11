import 'package:flutter/material.dart';
import 'package:routingthebasics/ExpenseRow.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Navigation Basics',
    home: new FirstScreen(),
    theme: new ThemeData(
      primaryColor: Colors.amber[500],
      textSelectionHandleColor: Colors.blueGrey[500],
      accentColor: Colors.amberAccent[100],
      ),
  ));

}


final incomeController = new TextEditingController();
final housingController = new TextEditingController();
final autoController = new TextEditingController();
final cellPhoneController = new TextEditingController();
final otherShitController = new TextEditingController();

class FirstScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('First Screen'),
      ),
      body: new Center(
        child: new ListView(
          children: <Widget>[
            new TextField(
              controller: incomeController,
              decoration: new InputDecoration( labelText: "Yearly Income",
                icon: new Icon(Icons.attach_money),
                counterText: "Insert cool stuff here",
              ),

              keyboardType: TextInputType.number,
            ),
            new TextField(
              controller: housingController,
              decoration: new InputDecoration( labelText: "Monthly Housing Payment",
                icon: new Icon(Icons.home),
              ),

              keyboardType: TextInputType.number,
            ),


         //   ExpenseRow('testing', Icon(Icons.money_off), autoController),
      

            new RaisedButton(
                color: Theme.of(context).accentColor,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.navigate_next),
                    Text("Calculate"),


                  ],
                ),
                onPressed: ()
              {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new SecondScreen()));
                print(incomeController.toString());


              }
    )
          ]
        )
      )
    );
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
        title: new Text(incomeController.text),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text(incomeController.text),
        ),
      ),
    );
  }
}




