import 'package:flutter/material.dart';

class PerfectDShapeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 200,
              width: 150,
              decoration: const BoxDecoration(
                // shape: BoxShape.circle,
                //   boxShadow: [BoxShadow(color: Colors.white, blurRadius: 10, offset: Offset(0, 0),)],
                //   gradient: LinearGradient(
                //     begin: Alignment.topLeft,
                //     end: Alignment.bottomRight,
                //     colors: <Color>[Colors.red, Colors.redAccent, Colors.redAccent, Colors.white],
                //   ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                        // Lighter shade
                      Color(0xFFFF7F85),
                      // Slightly darker pink
                      Color(0xFFFF7F85),
                      Color(0xFFFCE4EC),
                      //Color(0xFFFFA8A4),
                      //Colors.white
                    ],
                  ),
                  //color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(50))),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 35),
                      Text(
                        'Breakfast',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bread,',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Peanut butter,',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Apple',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '525',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                          Text(
                            'kcal',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0 , bottom: 30),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                  color: Colors.white70,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/5246/5246749.png', scale: 8))),
              height: 70,
              width: 80,
              //color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Flutter UI')),
      body: PerfectDShapeContainer(),
      backgroundColor: Colors.white,
    ),
  ));
}
