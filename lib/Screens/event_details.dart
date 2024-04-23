
import 'package:chithirai_bni_app/Screens/events.dart';
import 'package:flutter/material.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Events()));
        }, 
        icon: const Icon(Icons.arrow_back)),
        title: const Text('Event Details'),
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
      body:  SingleChildScrollView(

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
                          image: DecorationImage(image: AssetImage('assets/bni-red.webp'))
                        ),
                      ),
                        
                        const SizedBox(height: 10,),
                        const SizedBox(
                          height: 300,
                          child:  Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                    Text('Drive in : Back to the future',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                    ),
                                     SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Icon(Icons.location_pin),
                                        Text('Dindigul')
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Icon(Icons.alternate_email),
                                        Text('Alam')
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Icon(Icons.timer),
                                        Text('20:00 to 21:00 PM')
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_month),
                                        Text('April 20 2024')
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Event fees details',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                               Row(
                                      children: [
                                        Text('Ticket Type:'),
                                        SizedBox(width: 20,),
                                        Text('Business Plan')
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Text('Total'),
                                        Text('Rp: 720.00')
                                      ],
                                    ),
                              ],
                            ),
                        )
                    ],
                  )
                  
                ),

                const SizedBox(height: 30,),
                
                 SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                 child: SizedBox(
                  child: Card(

                        child: DataTable(
                              
                            columns: const [
                              DataColumn(label: Text('Name')),
                              DataColumn(label: Text('Organization Name')),
                              DataColumn(label: Text('Business Category')),
                              DataColumn(label: Text('Location')),
                              DataColumn(label: Text('Chapter Name')),
                              DataColumn(label: Text('Status'))
                            ],
                            rows: const [
                              DataRow(cells: [
                                DataCell(Text('John')),
                                DataCell(Text('GeoMap')),
                                DataCell(Text('Mapping and Analysis')),
                                DataCell(Text('Thoothukudi')),
                                DataCell(Text('BNI Ejaman')),
                                DataCell(Text('John')),
                              ]
                              ),
                              DataRow(cells: [
                                DataCell(Text('John')),
                                DataCell(Text('GeoMap')),
                                DataCell(Text('Mapping and Analysis')),
                                DataCell(Text('Thoothukudi')),
                                DataCell(Text('BNI Ejaman')),
                                DataCell(Text('John')),
                              ]
                              ),
                              DataRow(cells: [
                                DataCell(Text('John')),
                                DataCell(Text('GeoMap')),
                                DataCell(Text('Mapping and Analysis')),
                                DataCell(Text('Thoothukudi')),
                                DataCell(Text('BNI Ejaman')),
                                DataCell(Text('John')),
                              ]
                              ),DataRow(cells: [
                                DataCell(Text('John')),
                                DataCell(Text('GeoMap')),
                                DataCell(Text('Mapping and Analysis')),
                                DataCell(Text('Thoothukudi')),
                                DataCell(Text('BNI Ejaman')),
                                DataCell(Text('John')),
                              ]
                              )
                            ],
                            
                        ),
                  ),
                )
                 ),
                
              ],
            ),

             )

      ),
      );
    
  }
}