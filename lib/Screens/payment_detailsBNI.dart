import 'package:chithirai_bni_app/Screens/Aboutus.dart';
import 'package:chithirai_bni_app/Screens/add_subscribtion.dart';
import 'package:chithirai_bni_app/Screens/event_details.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class paymentDetailsBNI extends StatefulWidget {
  const paymentDetailsBNI({super.key});

  @override
  State<paymentDetailsBNI> createState() => _paymentDetailsBNIState();
}

class _paymentDetailsBNIState extends State<paymentDetailsBNI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AddSubscribtion()));
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
                    'Payment Method'
                    ), 
                  ),
                   const SizedBox(
                    height: 20,
                    ),
                   Column(
                          children: [
                           const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                              'your Card Details',
                              style: TextStyle(
                                color: Color.fromARGB(255, 33, 33, 33),
                              ),
                              ), 
                            ),
                           const SizedBox(
                            height: 20,
                           ),
                             
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                'Name On Card',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                 Text(
                                'Expiry',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                ),
                                ],
                              )
                                
                             ),
                            const SizedBox(
                              height: 5,
                             ),
                             Row(
                              children: [
                                Container(
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 250, 249, 249)),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding:const EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )),
                     const SizedBox(
                        width: 20,
                      ),
                       Container(
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 250, 249, 249)),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding:const EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )),
                              ],
                             ),
                            const SizedBox(
                              height: 20,
                             ),
                              const Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                'Card Number',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                 Text(
                                'CVV',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                ),
                                ],
                              )
                                
                             ),
                            const SizedBox(
                              height: 5,
                             ),
                             Row(
                              children: [
                                Container(
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 250, 249, 249)),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding:const EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )),
                      const SizedBox(
                        width: 20,
                      ),
                       Container(
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 250, 249, 249)),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding:const EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )),
                              ],
                             ),
                           
                              const SizedBox(
                                height: 20,
                               ),
                                  Row(

                                    children: [
                                      Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:const Color.fromARGB(255, 215, 215, 219)),
                              child: GestureDetector(
                                  onTap: () {
                                  },
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'cancel',
                                      style: TextStyle(color: Color.fromARGB(255, 237, 165, 165)),
                                    ),
                                  ))),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:const Color.fromARGB(255, 56, 56, 239)),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder:((context) => const AboutUs()
                                        )
                                         )
                                    );
                                  },
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'pay',
                                      style: TextStyle(color: Color.fromARGB(255, 240, 236, 236)),
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
                      'Payment Method',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      ), 
                    ),
                   const  SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding:EdgeInsets.only(left: 20) ,
                            child:Text(
                        '... 1234'
                        ),
                            ),
                          
                        SizedBox(
                          width: 150,
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
                      const SizedBox(
                        height: 15,
                      ),
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
                          height: 15,
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
                          height: 15,
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
                                  
                          ],
                        ),
                ] 
                        ),
                    ),
                
                )
            );
        
    
  }
}