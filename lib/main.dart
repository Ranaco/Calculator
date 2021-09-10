import 'package:flutter/material.dart';
import 'UI/body_calc.dart';

main() {
  runApp(
    MaterialApp(home: HomePage()),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      home: Scaffold(
        body: Container(
          child: Calc(),
        ),
        backgroundColor: Colors.black,
        floatingActionButton: Container(
          decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
            BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            BoxShadow(
              offset: Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1,
            )
          ]),
          child: FloatingActionButton(
            //Floating Action button is here!
            onPressed: () {},
            child: Icon(Icons.arrow_forward_ios),
            backgroundColor: Colors.grey,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
