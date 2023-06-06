import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Launch Button"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.green.shade700,
                blurRadius: 8,
                spreadRadius: 10,
              ),
              const BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
              )
            ],
          ),
          child: InkWell(
            splashColor: Colors.grey,
            borderRadius: BorderRadius.circular(90),
            child: Container(
              height: 120,
              width: 120,
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "GO",
                  style: TextStyle(
                    color: Colors.white,
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
