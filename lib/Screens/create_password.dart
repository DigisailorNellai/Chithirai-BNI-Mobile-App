import 'package:chithirai_bni_app/Screens/otp.dart';
import 'package:chithirai_bni_app/Screens/register.dart';
import 'package:flutter/material.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({super.key});

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {

  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Stack(
          children: [
             
            Image.asset('assets/20502 1.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 40),
            child: IconButton(onPressed: (){
                        Navigator.pop(context, const RegisterPage());
             }, icon: const Icon(Icons.arrow_back,
             color: Colors.white)),
            ),
             
             Padding(padding:  const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 200
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
                const Text('Create Password',
        style: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w600,
          fontSize: 32,
          color: Colors.white
        ),
        ),
        const SizedBox(height: 20,),
        const Text('Password',
        style: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Colors.white
        ),
        ),
        const SizedBox(height: 5,),
          Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)
                ),
                child:  Theme(
              data: ThemeData(
                // Set cursor color here
                textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.black),
              ),
              child: TextFormField(
                decoration:  InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0), 
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      visibility =!visibility;
                    });
                  }, icon: Icon(visibility ? Icons.visibility : Icons.visibility_off))// Optional: adjust content padding
                ),
              ),
              )
              ),
              const SizedBox(height: 10,),
              const Text('Confirm Password',
        style: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Colors.white
        ),
        ),
        const SizedBox(height: 5,),
          Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)
                ),
                child:  Theme(
              data: ThemeData(
                // Set cursor color here
                textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.black),
              ),
              child: TextFormField(
                decoration:  InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0), 
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      visibility =!visibility;
                    });
                  }, icon: Icon(visibility ? Icons.visibility : Icons.visibility_off))// Optional: adjust content padding
                ),
              ),
              )
              ),
              const SizedBox(height: 100,),
              Center(
              child: Container(
                width: 250,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: ElevatedButton(
                  onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Otp()));
              }, style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
              ),
              child: const Text('Next',
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.white
              ),))
              ),
              )
          ],
        ) 
        
        
             )
          ],
        ),
        
    );
  }
}