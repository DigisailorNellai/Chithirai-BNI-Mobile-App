// ignore: file_names
import 'package:carousel_slider/carousel_slider.dart';
import 'package:chithirai_bni_app/Screens/Profile_bni.dart';
import 'package:chithirai_bni_app/Screens/event_details.dart';
import 'package:chithirai_bni_app/Screens/meeting_page.dart';
import 'package:flutter/material.dart';

class EventProfile extends StatefulWidget {
  const EventProfile({super.key});

  @override
  State<EventProfile> createState() => _EventProfileState();
}

class _EventProfileState extends State<EventProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile()));
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text('Profile'),
        actions: [
          Builder(
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
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: const BoxDecoration(
                    //color: Colors.blue,
                    ),
                child: Image.asset(
                  'assets/conference image.jpg',
                )),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: const Text('Dashbord'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.location_city,
                color: Colors.red,
              ),
              title: const Text('Region'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.subscriptions,
                color: Colors.red,
              ),
              title: const Text('Subscription'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.money,
                color: Colors.red,
              ),
              title: const Text('Finance'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.event,
                color: Colors.red,
              ),
              title: const Text('Event'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EventDetails()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.person_2,
                color: Colors.red,
              ),
              title: const Text('Meetings'),
              onTap: () {},
            ),
             ListTile(
              leading: const Icon(
                Icons.person_2,
                color: Colors.red,
              ),
              title: const Text('AboutUs'),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => EventDetails(),
                    )
                  );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
                child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/conference image.jpg'))),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name : Abuthar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('Place : Dindigul'),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
            const SizedBox(
              height: 30,
            ),
            CarouselSlider(
              items: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyMeeting()));
                    },
                    child: Card(
                        child: Column(
                      children: [
                        Container(
                          height: 200,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('assets/conference image.jpg'),
                          )),
                        ),
                        const SizedBox(
                            child: Column(children: [
                          Row(
                            children: [
                              Icon(Icons.calendar_month),
                              Text('March 20 2023')
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_pin),
                              Text('Dindigul')
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.timer),
                              Text('20:00 to 21:00 PM')
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.calendar_month),
                              Text('April 20 2024')
                            ],
                          ),
                        ]))
                      ],
                    ))),
              ],
              options: CarouselOptions(
                height: 390,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
