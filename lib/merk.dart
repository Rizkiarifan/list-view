import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Merk extends StatelessWidget {
  const Merk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            "ini isi dari list view",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
