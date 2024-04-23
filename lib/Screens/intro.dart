import 'package:chithirai_bni_app/Screens/admin_login.dart';
import 'package:chithirai_bni_app/Screens/members_login.dart';
import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(children: [
        Image.asset(
          'assets/Together 1.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          color: Colors.black.withOpacity(0.5),
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 75),
              child: Text(
                'Individually,\nwe are one\ndrop. Together,\nwe are an\nocean',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: SizedBox(
                width: 300,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const AdminLogin()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.4),                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                      
                    ),
                  child: const Text('Admin',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white
                  ),),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text(
                'or',
                style: TextStyle(
                  
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white
                  
                  ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 50),
              child: SizedBox(
               
                width: 300,
                height: 56,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const MembersLogin()));
                    },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.4),                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                      
                    ),
                    child: const Text('Member',
                    style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                  ),
                  )),
              ),
            ),
          ],
        )
      ])),
    );
  }
}