import 'package:chithirai_bni_app/Screens/forget_password.dart';
import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {

bool visibility = false;
bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/2149182034 1.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          ),
          Container(
            color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
          ),
          SingleChildScrollView(
            child: Padding(padding: const EdgeInsets.symmetric(vertical: 120,horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Welcome,',
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color: Colors.white
              ),),
              const SizedBox(height: 50,),
             const Text('Email',
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.white
              ),),
              const SizedBox(height: 20,),
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
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0), // Optional: adjust content padding
                ),
              ),
              )
              ),
             const SizedBox(height: 20,),
              const Text('Password',
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.white
              ),),
              const SizedBox(height: 20,),
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
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10), 
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
               Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgetPassword()));
                  },
                  child: const Text('Forget Password',
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 12

                ),),
                )
                
              ),
              const SizedBox(height: 40,),
              Container(
                width: 350,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: ElevatedButton(
                  onPressed: (){

              }, style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
              ),
              child: const Text('Sign in',
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white
              ),))
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Checkbox(
                    
                    value: checkValue, 
                  onChanged: (value){
                    setState(() {
                      checkValue = value!;
                    });
                  },
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: Colors.white)
                  ),
                  ),
                  //const SizedBox(width: 5,),
                  const Text('Keep me logged in',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.white
                  ),
                  )
                ],
              )
              

            ],
          ),
          )
          )
        ],
      ),
      );
    
  }
}