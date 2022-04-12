import 'package:flutter/material.dart';

class ColorsPage extends StatefulWidget {
  const ColorsPage({ Key? key }) : super(key: key);

  @override
  State<ColorsPage> createState() => _ColorsPageState();
}

class _ColorsPageState extends State<ColorsPage> {

  int i = 0;
  
  List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.green,
    Colors.yellow,
    Colors.blueGrey
  ];


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold( 
      appBar: AppBar(
        title: Text(
              "Index = $i",
              style: const TextStyle(
                fontSize: 20
              ),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          color: colors[i],
          child: Center(
            child: Text(
              "Index = $i",
              style: const TextStyle(
                fontSize: 35
              ),
            )
          ),
        )
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          print("Button clicked");
          if (i == colors.length -1) {
            setState(() {
              i=0;
            });
            
          } else {
            setState(() {
              i++;
            });

          }
        }
      ),
      
    );
  }
}