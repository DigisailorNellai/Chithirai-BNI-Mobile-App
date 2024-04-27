import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool Visibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Stack(
        children: [
          Image.asset(
            'assets/20502 1.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
         
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              children: [
                IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back, color: Colors.white)),
                const SizedBox(width: 5,),
                const Text('New Password',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white
                ),)
              ],
            )
            
          ),
           SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                      'New Password',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          fontSize: 32,
                          color: Colors.white),
                    ),
                    const Text(
                      'Please enter your new password',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                    const SizedBox(
                    height: 50,
                  ),
                   Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        const Text(
                    'Password',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Theme(
                        data: ThemeData(
                          // Set cursor color here
                          textSelectionTheme: const TextSelectionThemeData(
                              cursorColor: Colors.black),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                              border: InputBorder.none,
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 16.0,vertical: 15),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      Visibility = !Visibility;
                                    });
                                  },
                                  icon: Icon(Visibility
                                      ? Icons.visibility
                                      : Icons
                                          .visibility_off)) // Optional: adjust content padding
                              ),
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Confirm Password',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Theme(
                        data: ThemeData(
                          // Set cursor color here
                          textSelectionTheme: const TextSelectionThemeData(
                              cursorColor: Colors.black),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            
                              border: InputBorder.none,
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      Visibility = !Visibility;
                                    });
                                  },
                                  icon: Icon(Visibility
                                      ? Icons.visibility
                                      : Icons
                                          .visibility_off)) // Optional: adjust content padding
                              ),
                        ),
                      )),
                  const SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: Container(
                        width: 250,
                        height: 47,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: ElevatedButton(
                            onPressed: () {
                              
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue)),
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white),
                            ))),
                  )
                    ],
                  ),
                  
                ],
              )
              ),
          )
          
        ],
      ),
    );
  }
}
