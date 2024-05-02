import 'package:chithirai_bni_app/Screens/add_event.dart';
import 'package:chithirai_bni_app/Screens/intro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyMeeting extends StatefulWidget {
  const MyMeeting({super.key});

  @override
  State<MyMeeting> createState() => _MyMeetingState();
}

class _MyMeetingState extends State<MyMeeting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Intro()));
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
                  'assets/Rectangle 4intro.png',
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddEvents()));
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
                      const Row(
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
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  child: Card(
                    child: DataTable(
                      columns: [
                        const DataColumn(label: Icon(Icons.star_border_sharp)),
                        const DataColumn(
                            label: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    Text('Salce Kickoff Meeting'),
                                    Text('19 09:30')
                                  ],
                                ))
                          ],
                        )),
                        const DataColumn(
                            label: Column(
                          children: [
                            Icon(Icons.groups_2_sharp),
                            Text(
                              '10 participation',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            )
                          ],
                        )),
                        const DataColumn(
                            label: Column(
                          children: [
                            Icon(Icons.menu_outlined),
                            Text('7 referels')
                          ],
                        )),
                        const DataColumn(
                            label: Column(
                          children: [
                            Row(children: [
                              Text(
                                '40',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  'min',
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.grey,
                                  ),
                                ),
                              )
                            ]),
                            Text(
                              'Meeting Duration',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            )
                          ],
                        )),
                        DataColumn(
                            label: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: 100,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue,
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text('View Details'),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ))
                      ],
                      rows: [
                        DataRow(cells: [
                          const DataCell(Icon(Icons.star_border_sharp)),
                          const DataCell(Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Column(
                                    children: [
                                      Text('Salce Kickoff Meeting'),
                                      Text('19 09:30')
                                    ],
                                  ))
                            ],
                          )),
                          const DataCell(Column(
                            children: [
                              Icon(Icons.groups_2_sharp),
                              Text(
                                '10 participation',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          )),
                          const DataCell(Column(
                            children: [
                              Icon(Icons.menu_outlined),
                              Text('7 referels')
                            ],
                          )),
                          const DataCell(Column(
                            children: [
                              Row(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 22),
                                  child: Text(
                                    '40',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    'min',
                                    style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.grey,
                                    ),
                                  ),
                                )
                              ]),
                              Text(
                                'Meeting Duration',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          )),
                          DataCell(Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  width: 100,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text('View Details'),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                        ]),
                        DataRow(cells: [
                          const DataCell(Icon(Icons.star_border_sharp)),
                          const DataCell(Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Column(
                                    children: [
                                      Text('Salce Kickoff Meeting'),
                                      Text('19 09:30')
                                    ],
                                  ))
                            ],
                          )),
                          const DataCell(Column(
                            children: [
                              Icon(Icons.groups_2_sharp),
                              Text(
                                '10 participation',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          )),
                          const DataCell(Column(
                            children: [
                              Icon(Icons.menu_outlined),
                              Text('7 referels')
                            ],
                          )),
                          const DataCell(Column(
                            children: [
                              Row(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 22),
                                  child: Text(
                                    '40',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    'min',
                                    style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.grey,
                                    ),
                                  ),
                                )
                              ]),
                              Text(
                                'Meeting Duration',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          )),
                          DataCell(Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  width: 100,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text('View Details'),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                        ]),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      )),
    );
  }
}
