import 'package:chithirai_bni_app/Screens/event_details.dart';
import 'package:chithirai_bni_app/Screens/members_login.dart';
import 'package:chithirai_bni_app/Screens/payment_detailsBNI.dart';
import 'package:flutter/material.dart';

class AddSubscribtion extends StatefulWidget {
  const AddSubscribtion({super.key});

  @override
  State<AddSubscribtion> createState() => _AddSubscribtionState();
}

class _AddSubscribtionState extends State<AddSubscribtion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MembersLogin()));
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
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  Card(
                      child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/conference image.jpg'))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 100,
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
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                    'subscribtion'
                    ), 
                  ),
                  
                    Container(
                      height: 250,
                      width: 300,
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                           const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                              'Current Plan',
                              style: TextStyle(
                                color: Color.fromARGB(255, 33, 33, 33),
                              ),
                              ), 
                            ),
                           
                             const Divider(),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child:  Text(
                                'Team Package',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                ), 
                             ),
                            const SizedBox(
                              height: 10,
                             ),
                           const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  '10 Per month'
                                  ) ,
                              ),
                              const SizedBox(
                                height: 20,
                               ),
                                  Row(

                                    children: [
                                      Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 49, 53, 245)),
                              child: GestureDetector(
                                  onTap: () {
                                     Navigator.push(context, MaterialPageRoute(builder: (context)=> const paymentDetailsBNI()));
                                  },
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Upgrade Plan',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ))),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 243, 243, 245)),
                              child: GestureDetector(
                                  onTap: () {},
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'cancel plan',
                                      style: TextStyle(color: Color.fromARGB(255, 235, 69, 69)),
                                    ),
                                  )))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                 const Align(
                                    alignment: Alignment.centerLeft,
                                    child:Text(
                                    'Your plan renews on October 1, 2021',
                                    style:TextStyle(
                                      color: Color.fromARGB(255, 47, 46, 46),
                                    )
                                    ) ,
                                  )
                                  
                          ],
                        ), 
                        ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child:Text(
                      'Payment Method',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      ), 
                    ),
                     
                      const Divider(),
                      const Row(
                        children: [
                          Padding(
                            padding:EdgeInsets.only(left: 20) ,
                            child:Text(
                        '... 1234'
                        ),
                            ),
                          
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          'Expires 04/2022',
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const
                      Align(
                        alignment: Alignment.centerLeft,
                        child:Text(
                        'BILLING HISTORY'
                        ) ,
                      ),
                       
                        Divider(),
                        const Row(
                          children: [
                            Padding(
                              padding:EdgeInsets.only(left: 20),
                              child: Text(
                              'Dec 1, 2020',
                              ),
                              ),
                            
                              SizedBox(
                                width: 50,
                              ),
                               Text(
                                '10'
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text('Team Package'),

                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding:EdgeInsets.only(left: 20),
                              child: Text(
                              'Jan 1, 2021',
                              ),
                               ),
                              SizedBox(
                                width: 50,
                              ),
                               Text(
                                '10'
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text('Team Package'),
                                
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding:EdgeInsets.only(left: 20) ,
                              child: Text(
                              'Feb 1, 2021',
                              ) ,
                              ),
                           
                              SizedBox(
                                width: 50,
                              ),
                               Text(
                                '10'
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text('Team Package'),
                                
                          ],
                        )
                       
                ]
                )
              )
            )
          );
  }
}
