import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SavedItems extends StatelessWidget {
  const SavedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved Items", style: TextStyle( color: Colors.black, fontWeight: FontWeight.bold,),),
      ),
      body: Container(
        child: GridView.builder(gridDelegate: , itemBuilder: itemBuilder),
      ),
    );
  }
}