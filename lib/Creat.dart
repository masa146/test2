import 'package:flutter/material.dart';

GlobalKey<FormState> formstate = GlobalKey();

class Creat extends StatelessWidget {
  const Creat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.purple[100],
      appBar: AppBar(backgroundColor: Colors.purple),
      body: Container(padding: EdgeInsets.all(20),child: Column( children: [
        Row(
          children: [
            Text("  Create account ",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    shadows: [Shadow(color: Colors.black12)]))
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
        Container(
            padding: EdgeInsets.only(top: 30, bottom: 30,right: 450,left: 450),
            child: TextField(
              decoration: InputDecoration(
                  hintText: (" username "),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent)),
                  prefixIcon: Icon(Icons.account_circle)),
              keyboardType: TextInputType.name,
            )),
        Container(
          padding: EdgeInsets.only(top: 30, bottom: 20,right: 450,left: 450),
          child: TextField(
            decoration: InputDecoration(
                hintText: (" phone number "),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent)),
             prefixIcon:  Icon(Icons.phone_android_outlined)),
            maxLength: 10,
            keyboardType: TextInputType.phone,
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: 30, bottom: 20,right: 450,left: 450),
            child: Form(
              key: formstate,
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "pleas enter your data";
                  }
                },
                decoration: InputDecoration(
                    hintText: (" Password "),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent)),
                  prefixIcon:  Icon(Icons.lock)),
                keyboardType: TextInputType.text,
              ),
            )),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 60),
          child: MaterialButton(
            color: Colors.purple[400],
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Creat()));
              if (formstate.currentState!.validate()) {
                print("valid");
              } else {
                print(" not valid");
              }
            },
            child: Text("Create account"),
          ),
        )
      ]),
      ) );
  }
}
