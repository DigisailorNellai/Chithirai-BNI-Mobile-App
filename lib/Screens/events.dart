import 'package:carousel_slider/carousel_slider.dart';
import 'package:chithirai_bni_app/Screens/add_event.dart';
import 'package:chithirai_bni_app/Screens/digitally.dart';
import 'package:chithirai_bni_app/Screens/event_details.dart';
import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
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
            DrawerHeader(
                decoration: const BoxDecoration(
                    //color: Colors.blue,
                    ),
                child: Image.asset(
                  'assets/bni-red.webp',
                )),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: const Text('Dashbord'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Digitally(),
                    ));
              },
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Events()));
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
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Upcomming Events',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddEvents()));
                      },
                      child: const Text('Add Events'))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              CarouselSlider(
                items: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EventDetails()));
                      },
                      child: Card(
                          child: Column(
                        children: [
                          Container(
                            height: 200,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/bni-red.webp'),
                            )),
                          ),
                          const SizedBox(
                              child: Column(children: [
                            Row(
                              children: [
                                Icon(Icons.calendar_month),
                                Text('April 20 2024')
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
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Text(
                    'Previous Events',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              CarouselSlider(
                items: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EventDetails()));
                      },
                      child: Card(
                          child: Column(
                        children: [
                          Container(
                            height: 200,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/bni-red.webp'),
                            )),
                          ),
                          const SizedBox(
                              child: Column(children: [
                            Row(
                              children: [
                                Icon(Icons.calendar_month),
                                Text('April 20 2024')
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
