import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Membership extends StatefulWidget {
  const Membership({super.key});

  @override
  State<Membership> createState() => _MembershipState();
}

class _MembershipState extends State<Membership> {
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
                onTap: () {},
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'A Membership\n for everyone',
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 220),
                child: Divider(
                  color: Colors.yellow,
                  thickness: 2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'All Digitally  clubs share a single mission: we\nserve. Yet, no two Lions are exactly alike.\nThat’s what makes our service so strong.\nThe same can be said of our clubs no two\nclubs are exactly alike. We offer a variety of\nclub models and membership types to meet\nthe needs of all those looking to serve.\nHere, we have a membership that’s right for\nyou.',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 50,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Club Types',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              const Padding(
                padding: EdgeInsets.only(right: 310),
                child: Divider(
                  color: Colors.yellow,
                  thickness: 2,
                ),
              ),
              Image.asset('assets/Image+Background.png'),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Traditional Clubs',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Most Lions clubs are formed on\nthe traditional club model.These\nclubs bring together a group of\nservice minded individuals who\nwant to better their community,\nand meet locally on a regular\nbasis. Learnmore about traditional clubs',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/Image+Background (1).png'),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Speciality Clubs',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Specialty clubs are much like\ntraditional clubs, but bring\ntogether a group of individuals\nwho share a common interest in\naddition to a commitment to\nservice. A specialty may share a\nhobby, like snowboarding or\nknitting, or a common cultural\nbackground. Learn more about\nspecialty clubs',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/Image+Background (2).png'),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Virtual Clubs',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Virtual clubs conduct some or all\nclub meetings remotely, over the\nphone or via the internet. This club\ntype allows a more widely distributed\ngroup of club\nmembers to plan and execute\nservice projects with ease, and is\na great fit for those with busy schedules\nLearn more about virtualclubs',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/Image+Background (3).png'),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Campus Clubs',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Campus clubs offer students the\nopportunity to build leadership\nskills, and create a common bond\nof service with fellow students.\nMembers of campus clubs may also\ne eligible for student membership\nsee"Membership Types"for more\ndetails. Learn more about campus clubs',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ]),
          ),
        ));
  }
}
