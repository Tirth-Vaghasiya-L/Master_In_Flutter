import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Gradient Button"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0xff008B8B),
                blurRadius: 10,
                spreadRadius: 3,
              ),
            ],
          ),
          child: InkWell(
            splashColor: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 95,
              width: 250,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "TAP",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            onTap: () {
              print('Tapped on button');
            },
          ),
        ),
      ),
    ),
  ));
}
