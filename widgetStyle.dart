import 'package:flutter/material.dart';

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: Colors.blueGrey[300],
  shadowColor: Colors.grey,
  elevation: 5,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(7)),
  ),
);


