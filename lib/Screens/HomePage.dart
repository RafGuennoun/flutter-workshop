
import 'package:flutter/material.dart';

import '../Widgets/AvailibelsCars.dart';
import '../Widgets/BrandsContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    
    // Brands list 
    List brands = [
      const Text("All", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
      const Image(image: AssetImage('assets/mercedes_logo.png')),
      const Image(image: AssetImage('assets/audi_logo.png')),
      const Image(image: AssetImage('assets/bmw_logo.png')),
      const Image(image: AssetImage('assets/tesla_logo.png')), 
    ];

    // Cars
    var car1 = {
      'image' : 'assets/s500l.png',
      'name' : 'S500L',
      'year' : '2021',
      'price' : '3250 DA / Day',
      'tag' : 'car1'
    };

    var car2 = {
      'image' : 'assets/scoupe.png',
      'name' : 'S-Coupe',
      'year' : '2017',
      'price' : '1750 DA / Day',
      'tag' : 'car2'
    };

    var car3 = { 
      'image' : 'assets/a45s.png',
      'name' : 'A45S',
      'year' : '2021',
      'price' : '3500 DA / Day',
      'tag' : 'car3'
    };

    // cars list
    List cars = [car1, car2, car3];


    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold( 
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Colors.grey[300],
        title: const Text(
          "Take a car",
          style: TextStyle(
            color: Colors.black
          ),
        ),

        actions: const [
         
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1496302662116-35cc4f36df92?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"
              ),
            )
          )
        ],

        
      ),

      body: SafeArea(

        child: Container(
          width: width,
          height: height,
          color: Colors.grey[300],
          child: ListView(
            children: [
              
              // Brands container
              BrandsContainer(width: width, height: height, brands: brands),

              // Cars availible
              AvailiblsCars(width: width, cars: cars),

             
            ],
          ),
        )
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        backgroundColor: Colors.grey[800],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "settings"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil"
          ),
        ]
      ),
      
    );
  }
}
