import 'package:chithirai_bni_app/Screens/Aboutus.dart';
import 'package:chithirai_bni_app/Screens/Events_react.dart';
import 'package:flutter/material.dart';

class MemberLogin extends StatefulWidget {
  const MemberLogin({super.key});

  @override
  State<MemberLogin> createState() => _MemberLoginState();
}

class _MemberLoginState extends State<MemberLogin> {
  
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
              child: Image.asset('assets/Digital Logo Design 1digitally picture.png',
                
              )
            ),
            ListTile(
              leading:const Text(
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
              leading: const Text(
                'Member login',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              onTap: () {
                
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
                      'assets/Environmental hero reforestation campaign aims to restore biological corridors in Costa Rica 1.png',
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                      ),
                    const Padding(
                      padding:EdgeInsets.only(top: 50, left: 20),
                      child:Text(
                      'The meaning of life is to find your gift',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 8, 8, 8),
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
                        'We believe in changing the world by serving the\n   needs of our local communities. More than\n     1.4 million Peoples around the world are\n  responding to local and global challenges with\n   kindness and care. Come volunteer with us.',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 12, 12, 12)
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
                    'Being a Member means making an impact through service.',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight:FontWeight.bold,
                    ),
                    ) ,
                  ),
                  Divider(
                    thickness: 3,
                    color: const Color.fromARGB(255, 5, 135, 241),
                  ),
                    const  SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child:Text(
                    'Last year alone Lions served more than 539 million people worldwide. And were not slowing down. We continue to serve our localcommunities and support eight global causes that impact the world. ',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 16,
                    ),
                    ) ,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset('assets/Join%20-%20childhoodcancer%203.png.png'),
                  Text(
                    'Childhood Cancer',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'We provide support for the needs of children and\n          families affected by childhood cancer.',
                      style: TextStyle(
                      fontSize: 16,
                      
                    ),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Image.asset('assets/Join%20-%20diabetes%203.png.png'),
                      Text(
                    'Diabetes',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                      Text(
                        'We work to reduce theprevalence of diabetes\n    andimprove quality of life for thoseliving\n                           with diabetes.',
                        style: TextStyle(
                      fontSize: 16,
                      
                    ),
                        ),
                        SizedBox(
                        height: 10,
                      ),
                      Image.asset('assets/Join%20-%20disaster%203.png.png'),
                      Text(
                    'Disaster Relief',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                      Text(
                        'We take steps to meet immediate needs and\n  provide long-term support for communities\n           devastated by natural disasters.',
                        style: TextStyle(
                      fontSize: 16,
                      
                    ),
                        ),
                        SizedBox(
                        height: 10,
                      ),
                      Image.asset('assets/Join%20-%20environment%203.png.png'),
                       Text(
                    'Environment',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                      Text(
                        'We find ways to protect the environment to create healthier communities and a more sustainable world.',
                        style: TextStyle(
                      fontSize: 16,
                      
                    ),
                        ),
                        Image.asset('assets/Join%20-%20humanitarian%203.png.png'),
                       Text(
                    'Humanitarian',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                      Text(
                        'We identify the world’s most crucial needs and\nprovide humanitarian aid where it’s needed most.',
                        style: TextStyle(
                      fontSize: 16,
                      
                    ),
                        ),
                        Image.asset('assets/Join%20-%20hunger%203.png.png'),
                       Text(
                    'Hunger',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                      Text(
                        'We strive to improve food security and access to\n        nutritious food to help alleviate hunger.',
                        style: TextStyle(
                      fontSize: 16,
                      
                    ),
                        ),
                        Image.asset('assets/Join%20-%20vision%203.png.png'),
                       Text(
                    'Vision',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                      Text(
                        'We help prevent avoidable blindness and improve\n         quality of life for people who are blind or\n                            visually impaired.',
                        style: TextStyle(
                      fontSize: 16,
                      
                    ),
                        ),
                        Image.asset('assets/Join%20-%20youth%203.png.png'),
                       Text(
                    'Youth',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                      Text(
                        'We support young people so they can make\n    positive choices, lead healthy and productive\n       lives, and become the next generation of\n                            service leaders.',
                        style: TextStyle(
                      fontSize: 16,
                      
                    ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Being a Club member ... in their own words',
                          style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                    ),
                          ),
                          Divider(
                            color: const Color.fromARGB(255, 7, 139, 246),
                            thickness: 3,
                          ),
                          SizedBox(
                            height: 10,
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
              ]
             )
          )
       )
    );
  }
}