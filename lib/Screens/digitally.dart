import 'dart:ui';

import 'package:chithirai_bni_app/Screens/membership.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Digitally extends StatefulWidget {
  const Digitally({super.key});

  @override
  State<Digitally> createState() => _DigitallyState();
}

class _DigitallyState extends State<Digitally> {
  bool _isTextVisible = false;
  bool _isvisible = false;

  void _toggleTextVisibility() {
    setState(() {
      _isTextVisible = true;
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isTextVisible = false;
      });
    });
  }

  void _TextVisibility() {
    setState(() {
      _isvisible = true;
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isvisible = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/Digital Logo Design 1.png'),
          actions: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                'Join',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),
              child: const Text(
                'Donate',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu), // Your hamburger icon
                onPressed: () {
                  // Open the drawer when the hamburger icon is pressed
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                title: const Text(
                  'About Us',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  'Events',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  'Members Login',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  'Membership',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Membership(),
                      ));
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Stack(
              children: [
                Image.asset(
                  'assets/Together 1.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 400,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 90, left: 100),
                  child: Text(
                    'We rise by lifting\n       others',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 170, left: 50),
                  child: Text(
                    'Charity is the act of giving help,support, or\n           resources voluntarily to\nthose in need, without expecting anything\n                       in return.',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                    top: 300,
                    left: 130,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                      child: const Text(
                        'Explore Now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Our Club',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lato',
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Divider(
                color: Colors.blue,
                thickness: 5,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '     Lead Members',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 360,
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Card(
                      child: Column(children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/Ellipse 11.png'),
                    ),
                    Text(
                      'Nithya',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                        'Admin for madurai branch and part\nof our organisation for 6 years')
                  ])),
                  SizedBox(
                    width: 10,
                  ),
                  Card(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/Ellipse 8.png'),
                        ),
                        Text(
                          'Roshan',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                            'Admin for tirupur branch and part of\n our organisation for last 6 years')
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Card(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/Ellipse 7.png'),
                        ),
                        Text(
                          'Rajan',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                            'Admin for dindigul branch and part of\n our organisation for last 6 years')
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Card(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/Ellipse 8.png'),
                        ),
                        Text(
                          'Shivam',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                            'Admin for karur branch and part of\n our organisation for last 6 years')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Club Branch',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lato'),
                )),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Divider(
                color: Colors.blue,
                thickness: 5,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '     Location',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: _toggleTextVisibility,
                    child: Stack(children: [
                      Image.asset(
                        'assets/pexels-cadomaestro-1170412 1.png',
                        width: 170,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      if (_isTextVisible)
                        Positioned.fill(
                            child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                                child: Container(
                                    color: Colors.black.withOpacity(0.3),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Madurai',
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ))))
                    ])),
                const SizedBox(
                  width: 12,
                ),
                GestureDetector(
                  onTap: _toggleTextVisibility,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/pexels-divinetechygirl-1181264 1.png',
                        width: 170,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      if (_isTextVisible)
                        Positioned.fill(
                            child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 0.5,
                            sigmaY: 0.5,
                          ),
                          child: Container(
                            color: Colors.black.withOpacity(0.5),
                            alignment: Alignment.center,
                            child: const Text(
                              'Kovai',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: _toggleTextVisibility,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/pexels-fox-1595385 1.png',
                    width: 170,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  if (_isTextVisible)
                    Positioned.fill(
                        child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 0.5,
                        sigmaY: 0.5,
                      ),
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        alignment: Alignment.center,
                        child: const Text(
                          'Chennai',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: _toggleTextVisibility,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/pexels-hillaryfox-1595392 1.png',
                        width: 170,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      if (_isTextVisible)
                        Positioned.fill(
                            child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 0.5,
                            sigmaY: 0.5,
                          ),
                          child: Container(
                            color: Colors.black.withOpacity(0.5),
                            alignment: Alignment.center,
                            child: const Text(
                              'Mumbai',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                GestureDetector(
                  onTap: _toggleTextVisibility,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/pexels-nguyendesigner-244133 1.png',
                        width: 170,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      if (_isTextVisible)
                        Positioned.fill(
                            child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 0.5,
                            sigmaY: 0.5,
                          ),
                          child: Container(
                            color: Colors.black.withOpacity(0.5),
                            alignment: Alignment.center,
                            child: const Text(
                              'Salem',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: _toggleTextVisibility,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/pexels-product-school-1299359-2678468 1.png',
                    width: 170,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  if (_isTextVisible)
                    Positioned.fill(
                        child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 0.5,
                        sigmaY: 0.5,
                      ),
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        alignment: Alignment.center,
                        child: const Text(
                          'Nellai',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ))
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Card(
              child: Image.asset('assets/Rectangle 35.png'),
            ),
            Text(
              'Uniting for good',
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Stack(
              children: [
                Image.asset('assets/Rectangle 36.png'),
                Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 130,
                    ),
                    child: Text(
                      'we make difference everyday everywhere, we\nserve.And with the suppourt of our international\nassociation and our global foundation,we are\nchamging lives communities and the world we share',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                Image.asset('assets/Rectangle 38 (1).png'),
                Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 20,
                    ),
                    child: Text(
                      'Lions serve their local communnities in so\nmany ways and we are uniting to serve key\nglobal causes and special initiatives to\naddress some of the greatest challenges\nfacing our world today.',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            Image.asset('assets/Rectangle 37.png'),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Club',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Divider(
                color: Colors.blue,
                thickness: 5,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '     Partners',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        )));
  }
}
