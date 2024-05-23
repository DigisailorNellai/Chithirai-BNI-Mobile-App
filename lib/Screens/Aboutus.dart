import 'package:chithirai_bni_app/Screens/Events_react.dart';
import 'package:chithirai_bni_app/Screens/Member_Experience.dart';
import 'package:chithirai_bni_app/Screens/Member_Login_react.dart';
import 'package:chithirai_bni_app/Screens/payment_detailsBNI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const paymentDetailsBNI()));
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
                onTap: () {},
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
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EventsReact()));
                },
              ),
              
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:const EdgeInsets.all(20),
            child:
             Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/pexels-roman-odintsov-4552234 1.png',
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                      ),
                    const Padding(
                      padding:EdgeInsets.only(top: 50, left: 60),
                      child:Text(
                      'We are Lions International',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                      ), 
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                   const Padding(
                      padding:EdgeInsets.only(top: 100,left: 25),
                      child: Text(
                        'For over 100 years, We have served with uncommon\n  kindness, putting the needs of our neighbors, our\n communities and our world first. Through the incredible\n work of our leads and Leo members, and the support of\n our association and our global foundation, we are\n                         serving a world in need together ',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 13,
                          color: Colors.white
                        ),
                        ),
                      ),
                  ]
                  ),
                 const SizedBox(
                    height: 15,
                  ),
                 const Align(
                    alignment: Alignment.centerLeft,
                    child:Text(
                    'Digitally Clubs International',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight:FontWeight.bold,
                    ),
                    ) ,
                  ),
                 const Divider(
                    color: Color.fromARGB(255, 225, 136, 3),
                    height: 2,
                  ),
                 const  SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child:Text(
                    'Our association is made up of 1.4 million members in 49,000 clubs who bring hands and hearts to the communities we serve in nearly every country on earth. Our Lead and Leos help hundreds of millions\nof people every year. ',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 16,
                    ),
                    ) ,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                 const Align(
                    alignment: Alignment.centerLeft,
                    child:Text(
                    'Digitally Clubs International Foundation',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight:FontWeight.bold,
                    ),
                    ) ,
                  ),
                 const Divider(
                    color:  Color.fromARGB(255, 225, 136, 3),
                    height: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child:Text(
                    'OurDigitally Clubs International Foundation (DCIF) provides grants that empower the service of our members. Since its inception in 1968, DCIF has awarded more than US 1.2 billion in grant funding. about the difference we’re making together.  ',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 16,
                    ),
                    ) ,
                  ),
                 const  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 250,
                    color: Colors.indigo,
                    child:const Column(
                      children: [
                        Padding(
                          padding:EdgeInsets.only(top: 20,left: 5),
                          child: Text(
                          'We’re on a mission.',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          ),
                          ),
                          Divider(
                            color: Colors.orange,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3),
                            child: Text(
                              'Our mission is to empower Lions clubs, volunteers and partners to improve health and wellbeing, strengthen communities, and support those in need through humanitarian service and grants that impact lives globally, and encourage peace and international understanding. And we fulfill it every day, everywhere we serve.',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Lato',
                                fontSize: 15,
                              ),
                              ),
                          )
                        
                      ],
                    ),
                  ),
                 const SizedBox(
                    height: 10,
                  ),
                 const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'We’re looking for people like you.',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Lato',
                        
                      ),
                      ),
                  ),
                 const Divider(
                    color: Colors.orange,
                  ),
                 const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 420,
                    child: Card(
                      child: Column(
                        children: [
                          Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/Image+Background.png',
                      width: 200,
                      height:200 ,
                      ),
                  ),
                       const Align(
                        alignment: Alignment.centerLeft,
                        child:Text(
                          'Member Experience',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          ) ,
                       ),
                       const SizedBox(
                        height: 10,
                       ),
                       const Padding(
                        padding:EdgeInsets.only(left: 3),
                        child: Text(
                          'Helping people doesn’t just do good—it feels good. And serving alongside others who want to make a difference in the world feels even better. That’s just where the benefits of being a Lion begin.',
                          style: TextStyle(
                            fontSize:15,
                            fontFamily: 'Lato',

                          ),
                          ),
                        ),
                       const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:const Color.fromARGB(255, 68, 137, 87)),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MemberExperience()));
                                  },
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Learn More',
                                      style: TextStyle(color: Color.fromARGB(255, 11, 11, 11)),
                                    ),
                                  ))) ,
                        ),
                         
                        ]
                          ),
                        ),
                        
                         
                        ),
                        Container(
                    width: double.infinity,
                    height: 400,
                    child: Card(
                      child: Column(
                        children: [
                          Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/Image+Background2.png',
                      width: 200,
                      height:200 ,
                      ),
                  ),
                       const Align(
                        alignment: Alignment.centerLeft,
                        child:Text(
                          'Club and membership types',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          ) ,
                       ),
                       const SizedBox(
                        height: 10,
                       ),
                       const Padding(
                        padding:EdgeInsets.only(left: 3),
                        child: Text(
                          'With clubs in nearly every corner of the world and even online, there are so many options that fit your interests and lifestyle.',
                          style: TextStyle(
                            fontSize:15,
                            fontFamily: 'Lato',

                          ),
                          ),
                        ),
                       const SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:const Color.fromARGB(255, 93, 205, 202)),
                              child: GestureDetector(
                                  onTap: () {},
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Learn More',
                                      style: TextStyle(color: Color.fromARGB(255, 2, 8, 9)),
                                    ),
                                  ))) ,
                        ),
                         
                        ]
                          ),
                        ),
                        
                         
                        ),
                        Container(
                    width: double.infinity,
                    height: 400,
                    child: Card(
                      child: Column(
                        children: [
                          Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/Image+Background3.png',
                      width: 200,
                      height:200 ,
                      ),
                  ),
                       const Align(
                        alignment: Alignment.centerLeft,
                        child:Text(
                          'Where we serve',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          ) ,
                       ),
                       const SizedBox(
                        height: 10,
                       ),
                       const Padding(
                        padding:EdgeInsets.only(left: 3),
                        child: Text(
                          'Lions and Leos are actively serving their communities in over 200 countries and geographic areas around the world.',
                          style: TextStyle(
                            fontSize:15,
                            fontFamily: 'Lato',

                          ),
                          ),
                        ),
                       const SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:const Color.fromARGB(255, 237, 105, 65)),
                              child: GestureDetector(
                                  onTap: () {},
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Learn More',
                                      style: TextStyle(color: Color.fromARGB(255, 2, 8, 9)),
                                    ),
                                  ))) ,
                        ),
                         
                        ]
                          ),
                        ),
                        
                         
                        ),
                        Container(
                    width: double.infinity,
                    height: 420,
                    child: Card(
                      child: Column(
                        children: [
                          Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/Image+Background4.png',
                      width: 200,
                      height:200 ,
                      ),
                  ),
                       const Align(
                        alignment: Alignment.centerLeft,
                        child:Text(
                          'For who we are serve  ',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          ) ,
                       ),
                       const SizedBox(
                        height: 10,
                       ),
                       const Padding(
                        padding:EdgeInsets.only(left: 3),
                        child: Text(
                          'Lions and Leos serve in so many ways. Our clubs choose how to best help their communities, and we also have some global causes we’re passionate about as an organization.',
                          style: TextStyle(
                            fontSize:15,
                            fontFamily: 'Lato',

                          ),
                          ),
                        ),
                       const SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:const Color.fromARGB(255, 227, 90, 237)),
                              child: GestureDetector(
                                  onTap: () {},
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Learn More',
                                      style: TextStyle(color: Color.fromARGB(255, 2, 8, 9)),
                                    ),
                                  ))) ,
                        ),
                         
                        ]
                          ),
                        ),
                        
                         
                        ),
                       const SizedBox(
                          height: 20,
                        ),
                       const Align(
                          alignment: Alignment.centerLeft,
                          child:Text(
                          'Digitally change lives, including their own.',
                          style:TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                       const Divider(
                          color: Colors.orange,
                        ),
                        Container(
                          width: double.infinity,
                          height: 400,
                          child: Card(
                            child: Column(
                              children: [
                               const Padding(
                                  padding:EdgeInsets.only(top: 40, left: 10),
                                  child:Text(
                                  '"I love the club’s energy, vibe and the\nwork we’re doing. Being a Lion is now part\nof my identity."',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 17,
                                  ),
                                  ) ,
                                  ),
                                const  SizedBox(
                                    height: 20,
                                  ),
                                  Image.asset(
                                    'assets/div.image1.png',
                                    width: 130,
                                    height: 130,
                                    ),
                                   const SizedBox(
                                      height: 10,
                                    ),
                                Container(
                                  width: 250,
                                  height: 100,
                                  color: Colors.grey,
                                  child:const Column(
                                    children: [
                                      Padding(
                                        padding:EdgeInsets.only(top: 20),
                                        child:Text(
                                        'Najoua  Alioua',
                                        style: TextStyle(
                                          fontFamily:'Lato',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        ) ,
                                        ),
                                      Padding(
                                        padding:EdgeInsets.only(top:10),
                                        child: Text(
                                          'Morocco',
                                          style: TextStyle(
                                            fontFamily: 'Lato',
                                            fontSize: 15,
                                          ),
                                          ),
                                        )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                       const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          height: 400,
                          child: Card(
                            child: Column(
                              children: [
                               const Padding(
                                  padding:EdgeInsets.only(top: 40, left: 10),
                                  child:Text(
                                  '"I realized at a very young age that if I can help people, why not just go out and help? If you’re able to, do it."',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 17,
                                  ),
                                  ) ,
                                  ),
                                 const SizedBox(
                                    height: 20,
                                  ),
                                  Image.asset(
                                    'assets/div.image2.png',
                                    width: 130,
                                    height: 130,
                                    ),
                                   const SizedBox(
                                      height: 10,
                                    ),
                                Container(
                                  width: 250,
                                  height: 100,
                                  color: Colors.grey,
                                  child:const Column(
                                    children: [
                                      Padding(
                                        padding:EdgeInsets.only(top: 20),
                                        child:Text(
                                        'Adam Wilkinson',
                                        style: TextStyle(
                                          fontFamily:'Lato',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        ) ,
                                        ),
                                      Padding(
                                        padding:EdgeInsets.only(top:10),
                                        child: Text(
                                          'Ireland',
                                          style: TextStyle(
                                            fontFamily: 'Lato',
                                            fontSize: 15,
                                          ),
                                          ),
                                        )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                       const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          height: 400,
                          child: Card(
                            child: Column(
                              children: [
                               const Padding(
                                  padding:EdgeInsets.only(top: 40, left: 10),
                                  child:Text(
                                  '"I realized at a very young age that if I can help people, why not just go out and help? If you’re able to, do it."',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 17,
                                  ),
                                  ) ,
                                  ),
                                 const SizedBox(
                                    height: 20,
                                  ),
                                  Image.asset(
                                    'assets/div.image3.png',
                                    width: 130,
                                    height: 130,
                                    ),
                                   const SizedBox(
                                      height: 10,
                                    ),
                                Container(
                                  width: 250,
                                  height: 100,
                                  color: Colors.grey,
                                  child:const Column(
                                    children: [
                                      Padding(
                                        padding:EdgeInsets.only(top: 20),
                                        child:Text(
                                        'Jean M. Wilder',
                                        style: TextStyle(
                                          fontFamily:'Lato',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        ) ,
                                        ),
                                      Padding(
                                        padding:EdgeInsets.only(top:10),
                                        child: Text(
                                          'USA',
                                          style: TextStyle(
                                            fontFamily: 'Lato',
                                            fontSize: 15,
                                          ),
                                          ),
                                        )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                       const SizedBox(
                          height: 25,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:Image.asset(
                            'assets/Digital Logo Design 1digitally picture.png',
                            width: 100,
                            height: 30,
                            ),
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
                        ],
                      ),
                    ),
                  ),
                  

                  
                );
              
            
            
              
             
          
        
        
  }
}