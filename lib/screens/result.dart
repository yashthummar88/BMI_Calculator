import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    final List l = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your BMI Score',
          style: TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        elevation: 8,
        centerTitle: true,
        backgroundColor: Color(0xff0a112d),
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 275,
              width: 275,
              decoration: BoxDecoration(
                color: l[2][0],
                borderRadius: BorderRadius.circular(200),
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${l[0]}",
                    style: TextStyle(
                      color: l[2][1],
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "${l[1]}",
                    style: TextStyle(
                      color: l[2][1],
                      fontSize: 22,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.symmetric(
                horizontal: 35,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Underweight',
                        style: TextStyle(
                          color: l[2][2],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '<18',
                        style: TextStyle(
                          color: l[2][2],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Normal',
                        style: TextStyle(
                          color: l[2][3],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '18.5-25',
                        style: TextStyle(
                          color: l[2][3],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Overweight',
                        style: TextStyle(
                          color: l[2][4],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '25-30',
                        style: TextStyle(
                          color: l[2][4],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Obese',
                        style: TextStyle(
                          color: l[2][5],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '30-35',
                        style: TextStyle(
                          color: l[2][5],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Severly Obese',
                        style: TextStyle(
                          color: l[2][6],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '35-40',
                        style: TextStyle(
                          color: l[2][6],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Very Severly Obese',
                        style: TextStyle(
                          color: l[2][7],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '>40',
                        style: TextStyle(
                          color: l[2][7],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 35,
                ),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'RECALCULATE',
                    style: TextStyle(
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
