import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          title: Text('Profile'),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    padding: EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/conference image.jpg'),
                      fit: BoxFit.cover,
                    )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ExpansionTile(
                      title: const Text(
                        'Details',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text('Personl Details'),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text('Events'),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text('My Meeting'),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text('Add Subscription'),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ])
                ]))));
  }
}
