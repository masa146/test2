import 'package:flutter/material.dart';
import 'package:test2/Signing.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar(backgroundColor: Colors.purple),
        body: Column(children: [
          Padding(padding: EdgeInsets.only(bottom: 30)),
          Container(
            child: Image.asset(
              "images/photo_2023-12-05_08-34-38.jpg",
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
            ),
            width: 300,
            height: 300,
            padding: EdgeInsets.only(
              bottom: 50,
            ),
          ),
          Container(
              child: Row(
                children: [
                  Text(
                    "  Welcome to the pharmacy shop  ",
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
              padding: EdgeInsets.only(
                bottom: 50, /*top: 30*/
              )),
          Container(
              child: Row(children: [
                Text(
                  " Do you want to sign in as a Guest or Expert: ",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
              ], mainAxisAlignment: MainAxisAlignment.spaceAround),
              padding: EdgeInsets.only(
                bottom: 50, /*top: 30*/
              )),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: MaterialButton(
                  color: Colors.purple[400],
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Signing()));
                  },
                  child: Text("Expert"),
                )),
            SizedBox(width: 20, height: 20),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: MaterialButton(
                  color: Colors.purple[400],
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Signing()));
                  },
                  child: Text("Guest"),
                )),
            SizedBox(width: 20, height: 20),
          ])
        ]));
  }
}
