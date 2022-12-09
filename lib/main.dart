import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Home(),
    );
  }
}

class Home  extends StatefulWidget {
 
  @override
  _HomeState  createState() => _HomeState();
  
}


class _HomeState extends State < Home > with SingleTickerProviderStateMixin
{
 double siz = 0 ;
 double en = 0 ;
late AnimationController _controller;
@override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(seconds: 4 ))..forward();
        WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          siz = 150 ;
          en = 5.0 ;
        }));
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: RotationTransition(
          turns: Tween(begin: 0.0, end: en ).animate(_controller),
          child: AnimatedContainer(
            height: siz,
            width: siz,
          duration: const Duration(seconds: 4),
          curve: Curves.linear,
          child: FlutterLogo(
              size: siz,
            ),
          ),
      ) ,
    ),
    );

  }
  
  }
  

  
	