import 'package:flutter/material.dart';
import 'package:test2/Creat.dart';

GlobalKey<FormState> formstate = GlobalKey();

class Signing extends StatelessWidget {
  const Signing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(backgroundColor: Colors.purple),
      body: Column(
        // padding: EdgeInsets.all(10),
        children: [
          Container(
            child: Image.asset(
              "images/Screenshot_20231129-000004_Google.jpg",
              alignment: Alignment.bottomCenter,
            ),
            width: 400,
            height: 250,
            padding: EdgeInsets.only(bottom: 30, top: 10),
          ),
          Row(
            children: [
              Text("  Sign in  ",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      shadows: [Shadow(color: Colors.black12)]))
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Form(
                key: formstate,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 500, vertical: 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "pleas enter your data";
                      }
                    },
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        hintText: (" phone number "),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        prefixIcon: Icon(
                          Icons.phone_android_outlined,
                          color: Colors.black,
                        )),
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                  ),
                )),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            margin: EdgeInsets.symmetric(horizontal: 500),
            child: MaterialButton(
              color: Colors.purple[400],
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Signing()));
                if (formstate.currentState!.validate()) {
                  print("valid");
                } else
                  print(" not valid");
              },
              child: Text("Sign in"),
            ),
          ),
          Container(
              child: Row(
            children: [Text(" Don't have an account? ")],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          )),
          Container(
              padding: EdgeInsets.only(top: 30, bottom: 20),
              margin: EdgeInsets.symmetric(horizontal: 500),
              child: MaterialButton(
                color: Colors.purple[400],
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Creat()));
                  if (formstate.currentState!.validate()) {
                    print("valid");
                  } else {
                    print(" not valid");
                  }
                },
                child: Text("Create"),
              ))
        ],
      ),
    );
  }
}
