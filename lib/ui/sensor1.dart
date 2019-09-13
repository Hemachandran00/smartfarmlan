



import 'package:flutter/material.dart';
import 'package:smartfarmland/utils/data.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String finalCity;

  @override
  Widget build(BuildContext context) {
    var cropName="Maize";
    return Scaffold(


      body: ListView(
        padding: EdgeInsets.only(left: 20),
        children: <Widget>[

          SizedBox(height: 10),

          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Card(
              elevation: 6.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),


          Container(
            height: 500,
            width: 300,
            alignment: Alignment.center,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: furnitures.length,
              itemBuilder: (BuildContext context, int index) {
                Map furniture = furnitures[index];

                return Center(
                  child: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      child: Container(
                        height: 275,
                        width: 280,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              furniture['name'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "${furniture["img"]}",
                                height: 240,
                                width: 280,
                                fit: BoxFit.cover,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },

            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
