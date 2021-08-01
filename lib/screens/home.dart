import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/screens/logic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  double _height = 50;
  double _weight = 40;
  double _age = 10;
  String _a = "";

  Color _co_fe = Colors.white;
  Color _co_male = Colors.white;
  final _formKey = GlobalKey<FormState>();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  String result;
  String catagory1;
  List c1;
  AnimationController _controller;
  Animation transformAnimationMale;
  Animation transformAnimationFemale;
  Animation transformAnimationWeight;
  Animation transformAnimationAge;
  Animation transformAnimationHeight;
  @override
  void initState() {
    // TODO: implement initState
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    transformAnimationMale =
        Tween<Offset>(begin: Offset(-200, 0), end: Offset(0, 0))
            .animate(_controller);
    transformAnimationFemale =
        Tween<Offset>(begin: Offset(200, 0), end: Offset(0, 0))
            .animate(_controller);
    transformAnimationAge =
        Tween<Offset>(begin: Offset(200, 0), end: Offset(0, 0))
            .animate(_controller);
    transformAnimationHeight =
        Tween<Offset>(begin: Offset(200, 0), end: Offset(0, 0))
            .animate(_controller);
    transformAnimationWeight =
        Tween<Offset>(begin: Offset(-200, 0), end: Offset(0, 0))
            .animate(_controller);
    _controller.addListener(() {
      setState(() {});
    });
    _controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
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
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xff0a112d),
          padding: EdgeInsets.all(12),
          child: Form(
            key: widget._formKey,
            child: Column(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (widget._co_male == Colors.white) {
                          widget._co_male = Colors.pink;
                          widget._co_fe = Colors.white;
                          widget._a = "male";
                        } else if (widget._co_male == Colors.pink) {
                          widget._co_male = Colors.white;
                          widget._a = "";
                        }
                      });
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Transform.translate(
                              offset: transformAnimationMale.value,
                              child: Container(
                                color: Color(0xff1c1f3d),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      height: 70,
                                      child: SvgPicture.asset(
                                        'assets/images/male.svg',
                                        color: widget._co_male,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'MALE',
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white.withOpacity(0.7),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            flex: 1,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  if (widget._co_fe == Colors.white) {
                                    widget._co_fe = Colors.pink;
                                    widget._co_male = Colors.white;
                                    widget._a = "female";
                                  } else if (widget._co_fe == Colors.pink) {
                                    widget._co_fe = Colors.white;
                                    widget._a = "";
                                  }
                                });
                              },
                              child: Transform.translate(
                                offset: transformAnimationFemale.value,
                                child: Container(
                                  color: Color(0xff1c1f3d),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child: SvgPicture.asset(
                                          'assets/images/female.svg',
                                          color: widget._co_fe,
                                        ),
                                        height: 70,
                                        width: 70,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'FEMALE',
                                        style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white.withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  flex: 3,
                ),
                SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: Transform.translate(
                    offset: transformAnimationHeight.value,
                    child: Container(
                      color: Color(0xff1c1f3d),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text(
                                widget._height.toInt().toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'cm',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                          Slider(
                            value: widget._height,
                            max: 200,
                            min: 10,
                            divisions: 190,
                            onChanged: (val) {
                              setState(() {
                                widget._height = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  flex: 3,
                ),
                SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Transform.translate(
                            offset: transformAnimationWeight.value,
                            child: Container(
                              color: Color(0xff1c1f3d),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'WEIGHT',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    widget._weight.toInt().toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            if (widget._weight > 1) {
                                              widget._weight--;
                                            }
                                          });
                                        },
                                        heroTag: 'p2',
                                        child: Icon(Icons.remove),
                                        elevation: 2,
                                        splashColor: Colors.pink,
                                        backgroundColor:
                                            Colors.white.withOpacity(0.4),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      FloatingActionButton(
                                        heroTag: 'p1',
                                        onPressed: () {
                                          setState(() {
                                            if (widget._weight < 200) {
                                              widget._weight++;
                                            }
                                          });
                                        },
                                        child: Icon(Icons.add),
                                        elevation: 2,
                                        splashColor: Colors.pink,
                                        backgroundColor:
                                            Colors.white.withOpacity(0.4),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          flex: 1,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Transform.translate(
                            offset: transformAnimationAge.value,
                            child: Container(
                              color: Color(0xff1c1f3d),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'AGE',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    widget._age.toInt().toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            if (widget._age > 1) {
                                              widget._age--;
                                            }
                                          });
                                        },
                                        heroTag: 'm1',
                                        child: Icon(Icons.remove),
                                        elevation: 2,
                                        splashColor: Colors.pink,
                                        backgroundColor:
                                            Colors.white.withOpacity(0.4),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            if (widget._age < 200) {
                                              widget._age++;
                                            }
                                          });
                                        },
                                        heroTag: 'm2',
                                        child: Icon(Icons.add),
                                        elevation: 2,
                                        splashColor: Colors.pink,
                                        backgroundColor:
                                            Colors.white.withOpacity(0.4),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                  flex: 3,
                ),
                SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (widget._a == "male" || widget._a == "female") {
                          Calculate c = Calculate(
                            height: widget._height,
                            age: widget._age,
                            weight: widget._weight,
                          );
                          result = c.calculateValue();
                          catagory1 = c.catagory();
                          c1 = c.color1();

                          Navigator.of(context).pushNamed('result',
                              arguments: [result, catagory1, c1]);
                        } else {
                          showDialog(
                              barrierDismissible: true,
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Please Select Gender"),
                                  content: Text("select male or female"),
                                  actions: [
                                    InkWell(
                                      child: Text(
                                        'close',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          Navigator.of(context).pop();
                                        });
                                      },
                                    ),
                                  ],
                                  actionsPadding: EdgeInsets.only(
                                    bottom: 10,
                                    right: 10,
                                  ),
                                );
                              });
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          'CALCULATE',
                          style: TextStyle(
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  flex: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
