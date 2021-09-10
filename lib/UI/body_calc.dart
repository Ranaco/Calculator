import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(
              height: 350,
            ),
            Row(
              children: <Widget>[
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '1',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 30),
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
