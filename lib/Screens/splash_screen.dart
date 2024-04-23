import 'dart:async';
import 'package:chithirai_bni_app/Screens/intro.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const SplashScreen2(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 165, 255),
    );
  }
}

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const Intro()
        ),
      ),
    );
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 5, 165, 255),
      body: Center(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
                width: 150, // Width of the circular shape
                height: 150, // Height of the circular shape
                decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white, // Color of the circular shape
              ),
              child: Image.asset('assets/Group 5.png'),
          ),
          ),
            
           Positioned(
            top: 450,
            left: 180,
            child: CustomPaint(
          size: const Size(20, 320),
          painter: VerticalLinePainter(),
        ),
            ),
             
            
            Positioned(
              top: 760,
              left: 150,
              child: CustomPaint(
          size: const Size(100, 50), // Change size according to your requirement
          painter: SemiCirclePainter(),
        ),
            )
            
         
            
        
           
          
        ],
      )
      )
      
            
      
    );
  }
 
  }

class VerticalLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 4.0;

    canvas.drawLine(
      Offset(size.width , 0),
      Offset(size.width , size.height),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class SemiCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white // Change color as needed
      ..style = PaintingStyle.fill;

    // Draw semicircle
    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height),
      0,
      -3.14, // 180 degrees in radians
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}