import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  static var operand;
  static var press;

  _pressedButton(var _press) {
    press = _press;
    print(press);
  }

  static _operandFunc(var _operand) {
    operand = _operand;
    print(operand);
  }

  onClick() {
    setState(() {
      press += current;
    });
  }

  static var current = "";
  static var history = "";

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(250, 0, 0, 0),
              child: Text(
                history,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w200),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(250, 0, 0, 0),
              child: TextField(
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w200),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(20)),
                TextButton(
                  onPressed: () {
                    _operandFunc('AC');
                  },
                  child: Text(
                    'AC',
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w300,
                        fontSize: 30),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {
                    _operandFunc('C');
                  },
                  child: Text(
                    'C',
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w300,
                        fontSize: 30),
                  ),
                  style: TextButton.styleFrom(backgroundColor: Colors.grey),
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {
                    _operandFunc('%');
                  },
                  child: Text(
                    '%',
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.w300,
                      fontSize: 30,
                    ),
                  ),
                  style: TextButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.grey.shade200),
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {
                    _operandFunc('+/-');
                  },
                  child: Text(
                    '+/-',
                    style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.w300,
                        fontSize: 30),
                  ),
                  style: TextButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.grey.shade200),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(40, 5, 0, 0)),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-3, -3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade900,
                      ),
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade700,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pressedButton(7);
                    },
                    child: Text(
                      '7',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w300,
                          fontSize: 30),
                    ),
                    style: TextButton.styleFrom(
                        shape: CircleBorder(), backgroundColor: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-3, -3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade900,
                      ),
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade700,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pressedButton(8);
                    },
                    child: Text(
                      '8',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w300,
                          fontSize: 30),
                    ),
                    style: TextButton.styleFrom(
                        shape: CircleBorder(), backgroundColor: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-3, -3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade900,
                      ),
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade700,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pressedButton(9);
                    },
                    child: Text(
                      '9',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w300,
                          fontSize: 30),
                    ),
                    style: TextButton.styleFrom(
                        shape: CircleBorder(), backgroundColor: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {
                    _operandFunc('*');
                  },
                  child: Text(
                    '*',
                    style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.w300,
                        fontSize: 30),
                  ),
                  style: TextButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.grey.shade200),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(40, 5, 0, 0)),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-3, -3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade900,
                      ),
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade700,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pressedButton(4);
                    },
                    child: Text(
                      '4',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w300,
                          fontSize: 30),
                    ),
                    style: TextButton.styleFrom(
                        shape: CircleBorder(), backgroundColor: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-3, -3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade900,
                      ),
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade700,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pressedButton(5);
                    },
                    child: Text(
                      '5',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w300,
                          fontSize: 30),
                    ),
                    style: TextButton.styleFrom(
                        shape: CircleBorder(), backgroundColor: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-3, -3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade900,
                      ),
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade700,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pressedButton(6);
                    },
                    child: Text(
                      '6',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w300,
                          fontSize: 30),
                    ),
                    style: TextButton.styleFrom(
                        shape: CircleBorder(), backgroundColor: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {
                    _operandFunc('+');
                  },
                  child: Text(
                    '+',
                    style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.w300,
                        fontSize: 30),
                  ),
                  style: TextButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.grey.shade200),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(40, 5, 0, 0)),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-3, -3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade900,
                      ),
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade700,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pressedButton(1);
                    },
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w300,
                          fontSize: 30),
                    ),
                    style: TextButton.styleFrom(
                        shape: CircleBorder(), backgroundColor: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-3, -3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade900,
                      ),
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade700,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pressedButton(2);
                    },
                    child: Text(
                      '2',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w300,
                          fontSize: 30),
                    ),
                    style: TextButton.styleFrom(
                        shape: CircleBorder(), backgroundColor: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-3, -3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade900,
                      ),
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade700,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pressedButton(3);
                    },
                    child: Text(
                      '3',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w300,
                          fontSize: 30),
                    ),
                    style: TextButton.styleFrom(
                        shape: CircleBorder(), backgroundColor: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {
                    _operandFunc('-');
                  },
                  child: Text(
                    '-',
                    style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.w300,
                        fontSize: 30),
                  ),
                  style: TextButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.grey.shade200),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(40, 5, 0, 0)),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-3, -3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade900,
                      ),
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade700,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pressedButton('00');
                    },
                    child: Text(
                      '00',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w300,
                          fontSize: 30),
                    ),
                    style: TextButton.styleFrom(
                        shape: CircleBorder(), backgroundColor: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-3, -3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade900,
                      ),
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade700,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pressedButton(0);
                    },
                    child: Text(
                      '0',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w300,
                          fontSize: 30),
                    ),
                    style: TextButton.styleFrom(
                        shape: CircleBorder(), backgroundColor: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-3, -3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade900,
                      ),
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: Colors.grey.shade700,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _operandFunc('.');
                    },
                    child: Text(
                      '.',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w300,
                          fontSize: 30),
                    ),
                    style: TextButton.styleFrom(
                        shape: CircleBorder(), backgroundColor: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {
                    _operandFunc('/');
                  },
                  child: Text(
                    '/',
                    style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.w300,
                        fontSize: 30),
                  ),
                  style: TextButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.grey.shade200),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
