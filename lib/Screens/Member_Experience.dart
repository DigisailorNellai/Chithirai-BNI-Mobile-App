import 'package:carousel_slider/carousel_slider.dart';
import 'package:chithirai_bni_app/Screens/Aboutus.dart';
import 'package:chithirai_bni_app/Screens/Events_react.dart';
import 'package:chithirai_bni_app/Screens/Member_Login_react.dart';
import 'package:flutter/material.dart';

class MemberExperience extends StatefulWidget {
  const MemberExperience({super.key});

  @override
  State<MemberExperience> createState() => _MemberExperienceState();
}

class _MemberExperienceState extends State<MemberExperience> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutUs()));
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
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutUs()));
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
                      'assets/pexels-divinetechygirl-1181438 (1) 1.png',
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                      ),
                    const Padding(
                      padding:EdgeInsets.only(top: 50, left: 60),
                      child:Text(
                      'We are Digitally International',
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
                        'For over 100 years, We have served with uncommon kindness, putting the needs of our neighbors, our communities and our world first. Through the incredible work of our leads and Leo members, and the support of our association and our global foundation, we are serving a world in need together.',
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
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child:Text(
                    ' Digitally members experience  ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lato' 
                    ),
                    ), 
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.orange,
                  ) ,
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('After living in a remote fly-in Alaskan village for about a year and a half, my landlord invited me to a complimentary dinner at her club, so I jumped at the chance to go. I had no clue what club she even belonged to, but thought it might be a fun evening, so I decided to join her and enjoy a free meal.'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child:Text(
                    'Serving the people of Guatemala',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lato' 
                    ),
                    ), 
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.orange,
                  ) ,
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Six months later, I was elected tail twister and my Lion’s journey began. I did everything asked of me—attended meetings, volunteered and was a loyal Lion. Fast forward two years…I was 500 miles from home in a hospital with my critically ill mother and, at 2:00 a.m., I received a phone call from my brother who lived in Florida.'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('“Bubbles,” he said (that’s what he calls me). “I’ve had a stroke and I’m blind and need to come live with you.” I told him to quit joking around—our mom was really sick—and I couldn’t deal with his jokes right then. But upon further discussion, I discovered he wasn’t kidding. I booked him on the next plane to Alaska, and this began my journey of understanding what Lions really do.  '),
                  ),
                  const SizedBox(height: 20,),
                 CarouselSlider(items: [
                  Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/3.png'),)
                        ),
                      ),
                      Container(
                        height: 250,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/2.png'),)
                        ),
                      ),
                      Container(
                        height: 275,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/1.png'),)
                        ),
                      ),
                      Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/4.png'),)
                        ),
                      ),
                      Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/5.png'),)
                        ),
                      ),
                 ], options:CarouselOptions( 
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
                  const Text(
                    'It was this experience that made me become a\n        Lion in my heart, and I truly realized the\n                    importance of our work.',
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),
                    const SizedBox(height: 10),
                  const Text(
                    'A heart-warming moment for me was when I was walking out of the distribution center and saw an elderly gentleman sitting under a tree reading a Bible. He told me he has been waiting 12 years for glasses to read his Bible. This really touched me.'
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      'The parents of a six-year-old girl sent us a message that their daughter was having a lot of difficulty in school. After the referral, they took her to an optometrist to discover that her vision was the cause of her problems. Her parents said that had we not been there, they would never have known about her vision problems.'
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: double.infinity,
                        height: 400,
                        color: Color.fromARGB(255, 198, 4, 169),
                        child:Column(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Image.asset(
                          'assets/Frame 111.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                          height: 200,
                          ),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              'Our fellow Member with\n             there crew',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                'You dont have to be a Rotary member to get involved with Rotary. We have fellowships, groups, and exchanges for all ages and interests. Connect with a local Rotary or Rotaract club near you to find out whats available and how you can be involved.',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                                ),
                          ],
                        )
                         
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: double.infinity,
                        height: 400,
                        color: Color.fromARGB(255, 198, 4, 169),
                        child:Column(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Image.asset(
                          'assets/Premium Photo _ Successful team of young perspective businesspeople in office 1.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                          height: 200,
                          ),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              'We encourage everyone in\n              our team ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                              ),
                              const SizedBox(height: 10,),
                               const Text(
                                'Encourage young people to lead or participate in community service projects. These could include activities like environmental cleanups, food drives, or volunteering at local shelters. Rotate project leadership roles among youth members to foster leadership skills.',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                                ),
                          ],
                        )
                         
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
              ]
             )
          )
        )
    );
  }
}