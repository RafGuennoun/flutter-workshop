
import 'package:flutter/material.dart';

class BrandsContainer extends StatelessWidget {
  const BrandsContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.brands,
  }) : super(key: key);

  final double width;
  final double height;
  final List brands;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height*0.2,
      color: Colors.grey[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Text brands
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Brands",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          //List of brands
          SizedBox(
          
            width: width,
            height: height*0.12,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: brands.length,
              itemBuilder: (BuildContext context, int index){
                return Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
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
                    width: 100,
                    // color: Colors.white,
                    child: Center(
                      child: brands[index],
                    ),
                  ),
                );
              }
            ),
          )
        ],
      )
    );
  }
}