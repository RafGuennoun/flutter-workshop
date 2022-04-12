
import 'package:flutter/material.dart';
import 'package:qr_session/Screens/CarPage.dart';

class AvailiblsCars extends StatelessWidget {
  const AvailiblsCars({
    Key? key,
    required this.width,
    required this.cars,
  }) : super(key: key);

  final double width;
  final List cars;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      // color: Colors.greenAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text brands
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Availible cars",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          SizedBox(
            width: width,
            // height: height,
            child: ListView.builder(

              // this to never scroll the to be anle to scroll only with the principal list
              physics: const NeverScrollableScrollPhysics(),

              // take the minimum space possible
              // wsh teqder berk w khlas
              shrinkWrap: true,
              itemCount: cars.length,
              itemBuilder: (BuildContext context,  int index){
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow:  const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(2, 5), // Shadow position
                        ),
                      ],
                    ),
                    height: 200,
                    // color: Colors.grey[200],
                    child: Row(
                      children: [
                        // The left part (car + price)
                        Expanded(
                          flex: 2,
                          child: Container(
                            // color: Colors.yellow,
                            child: Column(
                              children: [

                                // the car image
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    // color: Colors.blue,
                                    child: Center(
                                      child: Hero(
                                        tag: cars[index]['tag'],
                                        child: Image.asset(
                                          cars[index]['image']
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // the car price
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    // color: Colors.orange,
                                    child: Center(
                                      child: Text(
                                        cars[index]['price'],
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold
                                        ),
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // the right part (name + year + btn)
                        Expanded(
                          flex: 1,
                          child: Container(
                            // color: Colors.purple,
                            child: Column(
                              children: [

                                // the car name
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    // color: Colors.red,
                                    child: Center(
                                      child: Text(
                                        cars[index]['name'],
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold
                                        ),
                                        )
                                    ),
                                  ),
                                ),

                                // the car year
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    // color: Colors.brown,
                                    child: Center(
                                      child: Text(
                                        cars[index]['year'],
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold
                                        ),
                                        )
                                    ),
                                   
                                  ),
                                ),

                                // the byn
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    // color: Colors.blueGrey,
                                    child: Center(
                                      child: ElevatedButton(
                                        child: const Text("Details"),
                                        onPressed: (){
                                          debugPrint("Details pressed");

                                          Navigator.push(
                                            context, 
                                            MaterialPageRoute(
                                              builder: (context) => CarPage(
                                                car: cars[index] ,
                                              ) 
                                            ),
                                          );

                                        }, 
                                      )
                                    ),
                                   
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
            ),
          )
        ],
      ),
    );
  }
}
