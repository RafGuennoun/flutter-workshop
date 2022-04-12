import 'package:flutter/material.dart';

class CarPage extends StatefulWidget {


  final Map car;

  const CarPage({required this.car});

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  @override
  Widget build(BuildContext context) {

     var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Car"),
        centerTitle: true,
      ),

      body: SafeArea(
        child: SizedBox(
          width: width,
          height: height,
          child:  Center(
            child: Hero(
              tag: widget.car['tag'],
              child: Image.asset(widget.car['image'])
            )
          ),
        ) 
      ),
    );
  }
}