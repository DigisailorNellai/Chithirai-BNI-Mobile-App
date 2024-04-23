import 'package:chithirai_bni_app/Screens/events.dart';
import 'package:flutter/material.dart';

class AddEvents extends StatefulWidget {
  const AddEvents({super.key});

  @override
  State<AddEvents> createState() => _AddEventsState();
}

class _AddEventsState extends State<AddEvents> {
  int _selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Events()));
        }, icon: const Icon(Icons.arrow_back)),
        title: const Text('Add Event'),
       actions:  [
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
              child: Image.asset('assets/bni-red.webp',
                
              )
            ),
            ListTile(
              leading: const Icon(Icons.home,
              color: Colors.red,),
              title: const Text('Dashbord'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.location_city,
               color: Colors.red,),
              title: const Text('Region'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.subscriptions,
               color: Colors.red,),
              title: const Text('Subscription'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.money,
               color: Colors.red,),
              title: const Text('Finance'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.event,
              color: Colors.red,),
              title: const Text('Event'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Events()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_2,
               color: Colors.red,),
              title: const Text('Meetings'),
              onTap: () {
                
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
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/conference image.jpg'),
                      fit: BoxFit.cover,
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Event Name',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 250, 249, 249)),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Venue',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 250, 249, 249)),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                 const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 250, 249, 249)),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Ticket Type',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 250, 249, 249)),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Event Status',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _selectedValue,
                          onChanged: (value) {
                            setState(() {
                              _selectedValue = value!;
                            });
                          }),
                      const Text('paid'),
                      const SizedBox(
                        width: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                              value: 2,
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              }),
                          Text('Unpaid')
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                 const  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Date',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 170,
                      ),
                      Text(
                        'Time',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 250, 249, 249)),
                          child: TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.access_time_outlined),
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          )),
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 250, 249, 249)),
                          child: TextField(
                            decoration: InputDecoration(
                                suffixIcon: const Icon(Icons.calendar_today_outlined),
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Event Fees',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 250, 249, 249)),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Add Discription',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 250, 249, 249)),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )),
                 const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 221, 220, 220)),
                              child: GestureDetector(
                                  onTap: () {},
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text('Cancel'),
                                  )))),
                       const SizedBox(
                        width: 100,
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 49, 53, 245)),
                              child: GestureDetector(
                                  onTap: () {},
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Submit',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )))),
                    ],
                  )
                ],
              ))),
    );
  }
}