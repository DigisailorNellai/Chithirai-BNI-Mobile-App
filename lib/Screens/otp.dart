import 'package:chithirai_bni_app/Screens/create_password.dart';
import 'package:chithirai_bni_app/Screens/events.dart';
import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {

  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;
  final _numberOfFields = 4;

    @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(_numberOfFields, (index) => FocusNode());
    _controllers =
        List.generate(_numberOfFields, (index) => TextEditingController());
  }

  @override
  void dispose() {
    for (int i = 0; i < _numberOfFields; i++) {
      _focusNodes[i].dispose();
      _controllers[i].dispose();
    }
    super.dispose();
  }


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
          child: IconButton(onPressed: () {
                  Navigator.pop(context , const CreatePassword());            
          }, icon: const Icon(Icons.arrow_back),
          color: (Colors.white),
          ),
         
          ),
          SingleChildScrollView(
            child: Padding(padding: const EdgeInsets.only(top: 130, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('OTP verification',
                style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w600,
                fontSize: 32,
                color: Colors.white
              ),
                ),
                const SizedBox(height: 20,),
                const Text('Enter Your Code',
                style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Colors.white
              ),),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  _numberOfFields,
                  (index) => SizedBox(
                    width: 60.0,
                    child: TextFormField(
                      
                      controller: _controllers[index],
                      focusNode: _focusNodes[index],
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      onChanged: (value) {
                        if (value.length == 1 && index < _numberOfFields - 1) {
                          FocusScope.of(context)
                              .requestFocus(_focusNodes[index + 1]);
                        } else if (value.length == 0 && index > 0) {
                          FocusScope.of(context)
                              .requestFocus(_focusNodes[index - 1]);
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        counter: const Offstage(),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            //color: Theme.of(context).accentColor,
                            width: 2.0,
                            
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const SizedBox(
                height: 40,
                child: Center(
                  child: Text(
                    'Enter your OTP we have send to your register mail id\nxyz@mail.com . Kindly check your inbox',
                    style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Colors.white
              ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Events()));
              }, style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
              ),
              child: const Text('Verify',
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.white
              ),))
              ),
              ),
              const SizedBox(height: 20,),
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Didn\'t receive the OTP',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                      onTap: () {
                        
                      },
                      child: const Text(
                        'Resend OTP',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white),
                      ))
                ],
              )
              ],
            ),
            ),
          )
          
        ],
      ),

    );
  }
}
