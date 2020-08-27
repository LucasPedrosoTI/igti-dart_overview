import 'package:flutter/material.dart';

void main() {
  runApp(Hello());
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        color: Colors.deepPurpleAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset(
              "assets/logo.png",
              width: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Hello',
                    style: TextStyle(
                        fontSize: 40, backgroundColor: Colors.black26),
                  ),
                ),
                Text(
                  'Lucas',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              'Hello 1',
              style: TextStyle(fontSize: 80, fontStyle: FontStyle.italic),
            ),
            FlatButton(
                color: Colors.white,
                onPressed: () => debugPrint("clicou"),
                child: Text("Press me")),
            Container(
              color: Colors.pink,
              width: 300,
              height: 100,
              alignment: Alignment.center,
              child: Text(
                'Container',
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
