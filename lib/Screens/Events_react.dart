import 'package:chithirai_bni_app/Screens/Aboutus.dart';
import 'package:chithirai_bni_app/Screens/Member_Login_react.dart';
import 'package:flutter/material.dart';

class EventsReact extends StatefulWidget {
  const EventsReact({super.key});

  @override
  State<EventsReact> createState() => _EventsReactState();
}

class _EventsReactState extends State<EventsReact> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MemberLogin()));
              },
              icon: const Icon(Icons.arrow_back)),
              title: Image.asset(
                'assets/Digital Logo Design 1digitally picture.png',
                ),
              actions: [
                ElevatedButton(onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
                child:const Text('Join')
                ),
               const SizedBox(
                  width: 10,
                ),
                ElevatedButton(onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow
                ),
                child:const Text(
                  'Donate',
                  style: TextStyle(
                    fontFamily: 'Lato',

                  ),
                ),
                
                ),
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
                    'assets/Digital Logo Design 1digitally picture.png',
                  )),
              ListTile(
                leading: const Text(
                  'AboutUs',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                onTap: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutUs()));
                },
              ),
              ListTile(
                leading:  const Text(
                  'Member Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                onTap: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MemberLogin()));
                },
              ),
              ListTile(
                leading: const Text(
                  'Events',
                  style: TextStyle(
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
          child:
             Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Color.fromARGB(255, 6, 69, 120),
                  child:const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                    'UPCOMING EVENTS',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ), 
                  )
                  
                ),
               const SizedBox(
                  height: 20,
                ),
                 Column(
                    children: [
                      Row(children: [
                        Padding(
                          padding:EdgeInsets.only(left: 10),
                          child:Container(
                  width: 270,
                  height: 35,
                  child: TextField(
                    onChanged: (value) {},
                    decoration:const InputDecoration(
                        prefixIcon:  Icon(Icons.search),
                        hintText: 'Makar Sankranti / Pongal',
                        //filled: true,
                        //contentPadding: const EdgeInsets.symmetric(vertical: 272, horizontal: 42),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ), 
                          ),
                            const  SizedBox(
                                width: 20,
                              ),
                             Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:Color.fromARGB(255, 247, 244, 53)),
                              child: GestureDetector(
                                  onTap: () {
                                    
                                  }, 
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'search',
                                      style: TextStyle(color: Color.fromARGB(255, 7, 7, 7)),
                                    ),
                                  )))
                    ],
                  ),
                 const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:EdgeInsets.all(20),
                    child:Card(
                child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Frame 82.png'))),
                ),
                const SizedBox(
                  height: 10,
                ),
                 SizedBox(
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        'SPEAKER MEET TBD',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 70, 125)
                          ),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                     const Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '30-04-2024 12:19 PM'
                          ),
                        ],
                      ),
                     const SizedBox(
                        height: 5,
                      ),
                     const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child: Text(
                          'Hotel Hyatt Regency Anna Salai Teynampet, Chennai',
                          
                          ),
                         ),
                        const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child:
                         Text(
                          'Read more',
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 129, 205)
                          ),
                           ),
                         ),
                         Center(
                          child: Container(
                              width: 130,
                              height: 42,
                              decoration:const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: ElevatedButton(
                                  onPressed: () {
                                    
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue)),
                                  child: const Text(
                                    'View More',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ))),
                         )
                       ],
                  ),
                )
              ],
            )
                   ) ,
                    ),
                  const SizedBox(
                    height: 10,
                   ),
                   Padding(
                    padding:EdgeInsets.all(20),
                    child:Card(
                child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Frame 83.png'))),
                ),
                const SizedBox(
                  height: 10,
                ),
                 SizedBox(
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        'JOIN BOARD MEETING',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 70, 125)
                          ),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                     const Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '06-05-2024 12:27 PM'
                          ),
                        ],
                      ),
                     const SizedBox(
                        height: 5,
                      ),
                     const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child: Text(
                          'Hotel Hyatt Regency Anna Salai Teynampet, Chennai',
                          
                          ),
                         ),
                        const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child:
                         Text(
                          'Read more',
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 129, 205)
                          ),
                           ),
                         ),
                         Center(
                          child: Container(
                              width: 130,
                              height: 42,
                              decoration:const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: ElevatedButton(
                                  onPressed: () {
                                    
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue)),
                                  child: const Text(
                                    'View More',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ))),
                         )
                       ],
                  ),
                )
              ],
            )
                   ) ,
                    ),
                   const SizedBox(
                    height: 10,
                   ),
                   Padding(
                    padding:EdgeInsets.all(20),
                    child:Card(
                child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Frame 84.png'))),
                ),
                const SizedBox(
                  height: 10,
                ),
                 SizedBox(
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        'GOVERNORS VISIT SM4',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 70, 125)
                          ),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                     const Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '07-05-2024 12:27 PM'
                          ),
                        ],
                      ),
                     const SizedBox(
                        height: 5,
                      ),
                     const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child: Text(
                          'Hotel Hyatt Regency Anna Salai Teynampet, Chennai',
                          
                          ),
                         ),
                        const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child:
                         Text(
                          'Read more',
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 129, 205)
                          ),
                           ),
                         ),
                         Center(
                          child: Container(
                              width: 130,
                              height: 42,
                              decoration:const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: ElevatedButton(
                                  onPressed: () {
                                    
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue)),
                                  child: const Text(
                                    'View More',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ))),
                         )
                       ],
                  ),
                )
              ],
            )
                   ) ,
                    ),
                   const SizedBox(
                    height: 10,
                   ),
                   Padding(
                    padding:EdgeInsets.all(20),
                    child:Card(
                child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Frame 85.png'))),
                ),
                const SizedBox(
                  height: 10,
                ),
                 SizedBox(
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        'CLUB ASSEMBLY BY INCOMING BOARD',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 70, 125)
                          ),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                     const Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '12-05-2024 12:28 PM'
                          ),
                        ],
                      ),
                     const SizedBox(
                        height: 5,
                      ),
                     const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child: Text(
                          'Hotel Hyatt Regency Anna Salai Teynampet, Chennai',
                          
                          ),
                         ),
                        const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child:
                         Text(
                          'Read more',
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 129, 205)
                          ),
                           ),
                         ),
                         Center(
                          child: Container(
                              width: 130,
                              height: 42,
                              decoration:const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: ElevatedButton(
                                  onPressed: () {
                                    
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue)),
                                  child: const Text(
                                    'View More',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ))),
                         )
                       ],
                  ),
                )
              ],
            )
                   ) ,
                    ),
                   const SizedBox(
                    height: 10,
                   ),
                   Padding(
                    padding:EdgeInsets.all(20),
                    child:Card(
                child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Image+Background (1).png'))),
                ),
                const SizedBox(
                  height: 10,
                ),
                 SizedBox(
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        'NO MEETING(NO SPEAKER)',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 70, 125)
                          ),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                     const Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '07-05-2024 12:27 PM'
                          ),
                        ],
                      ),
                     const SizedBox(
                        height: 5,
                      ),
                     const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child: Text(
                          'Hotel Hyatt Regency Anna Salai Teynampet, Chennai',
                          
                          ),
                         ),
                        const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child:
                         Text(
                          'Read more',
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 129, 205)
                          ),
                           ),
                         ),
                         Center(
                          child: Container(
                              width: 130,
                              height: 42,
                              decoration:const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: ElevatedButton(
                                  onPressed: () {
                                    
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue)),
                                  child: const Text(
                                    'View More',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ))),
                         )
                       ],
                  ),
                )
              ],
            )
                   ) ,
                    ),
                    const SizedBox(
                    height: 10,
                   ),
                   Padding(
                    padding:EdgeInsets.all(20),
                    child:Card(
                child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Frame 86.png'))),
                ),
                const SizedBox(
                  height: 10,
                ),
                 SizedBox(
                  height: 195,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        'CLOSED DOOR MEETING TO PASS BUDGET /... ',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 70, 125)
                          ),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '21-05-2024 12:44 PM'
                          ),
                        ],
                      ),
                     const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child: Text(
                          'Hotel Hyatt Regency Anna Salai Teynampet, Chennai',
                          
                          ),
                         ),
                        const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child:
                         Text(
                          'Read more',
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 129, 205)
                          ),
                           ),
                         ),
                         Center(
                          child: Container(
                              width: 130,
                              height: 42,
                              decoration:const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: ElevatedButton(
                                  onPressed: () {
                                    
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue)),
                                  child: const Text(
                                    'View More',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ))),
                         )
                       ],
                  ),
                )
              ],
            )
                   ) ,
                    ),
                    Container(
                  width: double.infinity,
                  height: 100,
                  color: Color.fromARGB(255, 6, 69, 120),
                  child:const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                    'Previous EVENTS',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ), 
                  )
                  
                ),
               const SizedBox(
                  height: 20,
                ),
                 Row(children: [
                        Padding(
                          padding:EdgeInsets.only(left: 10),
                          child:Container(
                  width: 270,
                  height: 35,
                  child: TextField(
                    onChanged: (value) {},
                    decoration:const InputDecoration(
                        prefixIcon:  Icon(Icons.search),
                        hintText: 'Diwali',
                        //filled: true,
                        //contentPadding: const EdgeInsets.symmetric(vertical: 272, horizontal: 42),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ), 
                          ),
                             const SizedBox(
                                width: 20,
                              ),
                             Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:Color.fromARGB(255, 247, 244, 53)),
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
                                      'search',
                                      style: TextStyle(color: Color.fromARGB(255, 7, 7, 7)),
                                    ),
                                  )))
                    ],
                  ),
                  
                  const SizedBox(
                    height: 20,
                   ),
                   Padding(
                    padding:EdgeInsets.all(20),
                    child:Card(
                child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Frame 87.png'))),
                ),
                const SizedBox(
                  height: 10,
                ),
                 SizedBox(
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        'Budhha Purnima',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 70, 125)
                          ),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                     const Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '30-04-2024 12:19 PM'
                          ),
                        ],
                      ),
                     const SizedBox(
                        height: 5,
                      ),
                     const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child: Text(
                          'Hotel Hyatt Regency Anna Salai Teynampet, Chennai',
                          
                          ),
                         ),
                        const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child:
                         Text(
                          'Read more',
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 129, 205)
                          ),
                           ),
                         ),
                         Center(
                          child: Container(
                              width: 130,
                              height: 42,
                              decoration:const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: ElevatedButton(
                                  onPressed: () {
                                    
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue)),
                                  child: const Text(
                                    'View More',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ))),
                         )
                       ],
                  ),
                )
              ],
            )
                   ) ,
                    ),
                    const SizedBox(
                    height: 10,
                   ),
                   Padding(
                    padding:EdgeInsets.all(20),
                    child:Card(
                child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Frame 88.png'))),
                ),
                const SizedBox(
                  height: 10,
                ),
                 SizedBox(
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        'RI CONVENTION SINGAPORE',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 70, 125)
                          ),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                     const Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '06-05-2024 12:27 PM'
                          ),
                        ],
                      ),
                     const SizedBox(
                        height: 5,
                      ),
                     const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child: Text(
                          'Hotel Hyatt Regency Anna Salai Teynampet, Chennai',
                          
                          ),
                         ),
                        const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child:
                         Text(
                          'Read more',
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 129, 205)
                          ),
                           ),
                         ),
                         Center(
                          child: Container(
                              width: 130,
                              height: 42,
                              decoration:const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: ElevatedButton(
                                  onPressed: () {
                                    
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue)),
                                  child: const Text(
                                    'View More',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ))),
                         )
                       ],
                  ),
                )
              ],
            )
                   ) ,
                    ),
                    const SizedBox(
                    height: 10,
                   ),
                   Padding(
                    padding:EdgeInsets.all(20),
                    child:Card(
                child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Frame 83.png'))),
                ),
                const SizedBox(
                  height: 10,
                ),
                 SizedBox(
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        'CLOSED DOOR MEETING ',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 70, 125)
                          ),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                     const Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '07-05-2024 12:27 PM'
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child: Text(
                          'Hotel Hyatt Regency Anna Salai Teynampet, Chennai',
                          
                          ),
                         ),
                        const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child:
                         Text(
                          'Read more',
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 129, 205)
                          ),
                           ),
                         ),
                         Center(
                          child: Container(
                              width: 130,
                              height: 42,
                              decoration:const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: ElevatedButton(
                                  onPressed: () {
                                    
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue)),
                                  child: const Text(
                                    'View More',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ))),
                         )
                       ],
                  ),
                )
              ],
            )
                   ) ,
                    ),
                    const SizedBox(
                    height: 10,
                   ),
                   Padding(
                    padding:EdgeInsets.all(20),
                    child:Card(
                child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Frame 85.png'))),
                ),
                const SizedBox(
                  height: 10,
                ),
                 SizedBox(
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        'CLUB ASSEMBLY BY INCOMING BOARD',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 70, 125)
                          ),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '12-05-2024 12:28 PM'
                          ),
                        ],
                      ),
                     const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child: Text(
                          'Hotel Hyatt Regency Anna Salai Teynampet, Chennai',
                          
                          ),
                         ),
                         const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child:
                         Text(
                          'Read more',
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 129, 205)
                          ),
                           ),
                         ),
                         Center(
                          child: Container(
                              width: 130,
                              height: 42,
                              decoration:const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: ElevatedButton(
                                  onPressed: () {
                                    
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue)),
                                  child: const Text(
                                    'View More',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ))),
                         )
                       ],
                  ),
                )
              ],
            )
                   ) ,
                    ),
                    const SizedBox(
                    height: 10,
                   ),
                   Padding(
                    padding:EdgeInsets.all(20),
                    child:Card(
                child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Image+Background (1).png'))),
                ),
                const SizedBox(
                  height: 10,
                ),
                 SizedBox(
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        'NO MEETING (NO SPEAKER)',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 70, 125)
                          ),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                     const Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '14-05-2024 12:32 PM'
                          ),
                        ],
                      ),
                     const SizedBox(
                        height: 5,
                      ),
                     const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child: Text(
                          'Hotel Hyatt Regency Anna Salai Teynampet, Chennai',
                          
                          ),
                         ),
                        const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child:
                         Text(
                          'Read more',
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 129, 205)
                          ),
                           ),
                         ),
                         Center(
                          child: Container(
                              width: 130,
                              height: 42,
                              decoration:const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: ElevatedButton(
                                  onPressed: () {
                                    
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue)),
                                  child: const Text(
                                    'View More',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ))),
                         )
                       ],
                  ),
                )
              ],
            )
                   ) ,
                    ),
                    const SizedBox(
                    height: 10,
                   ),
                   Padding(
                    padding:EdgeInsets.all(20),
                    child:Card(
                child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Frame 82.png'))),
                ),
                const SizedBox(
                  height: 10,
                ),
                 SizedBox(
                  height: 195,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        'CLOSED DOOR MEETING TO PASS BUDGET /... ',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 70, 125)
                          ),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                     const Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '21-05-2024 12:44 PM'
                          ),
                        ],
                      ),
                     const SizedBox(
                        height: 5,
                      ),
                     const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child: Text(
                          'Hotel Hyatt Regency Anna Salai Teynampet, Chennai',
                          
                          ),
                         ),
                        const Padding(
                        padding:EdgeInsets.only(left: 30),
                        child:
                         Text(
                          'Read more',
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 129, 205)
                          ),
                           ),
                         ),
                         Center(
                          child: Container(
                              width: 130,
                              height: 42,
                              decoration:const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: ElevatedButton(
                                  onPressed: () {
                                    
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue)),
                                  child: const Text(
                                    'View More',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ))),
                         )
                       ],
                  ),
                )
              ],
            )
                   ) ,
                    ),
                   const SizedBox(
                          height: 20,
                        ),
                       const Row(
                          children: [
                            Icon(
                              Icons.mail_outline,
                              size: 30,
                              ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'digitally@donate.com',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ],
                        ),
                       const SizedBox(
                                height: 20,
                              ),
                             const Row(
                                children: [
                                   Icon(
                              Icons.call,
                              size: 30,
                              ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '+91 955456841',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                                ],
                              ),
                             const SizedBox(
                                height: 20,
                              ),
                              const Row(
                                children: [
                                   Icon(
                              Icons.location_on_sharp,
                              size: 30,
                              ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Abcd Chambers #22, 4th Floor KH Road,\nChennai- 600043 Tamil Nadu - India',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                                ],
                              ), 
              ]
                )
              ]
             )
        )
          );
        
    
  }
}