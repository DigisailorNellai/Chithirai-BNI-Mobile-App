import 'package:chithirai_bni_app/Screens/admin_login.dart';
import 'package:chithirai_bni_app/Screens/verification.dart';
import 'package:flutter/material.dart';

class ForgetPassword2 extends StatefulWidget {
  const ForgetPassword2({super.key});

  @override
  State<ForgetPassword2> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Image.asset(
        'assets/2150917272 1fp baground.png',
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
                  onPressed: () {
                    Navigator.pop(context, const AdminLogin());
                  },
                  icon: const Icon(Icons.arrow_back, color: Colors.white)),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Forget Password',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white),
              )
            ],
          )),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 130, horizontal: 75),
        child: Text(
          'Forgot Password',
          style: TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.w600,
              fontSize: 32,
              color: Colors.white),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 200, horizontal: 40),
        child: Text(
            'Please write your email to recieve a confirmation\n                      code to set a new password',
            style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.white)),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 280, horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Phone Number',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.white)),
            const SizedBox(
              height: 20,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Theme(
                  data: ThemeData(
                    // Set cursor color here
                    textSelectionTheme:
                        const TextSelectionThemeData(cursorColor: Colors.black),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.0), // Optional: adjust content padding
                    ),
                  ),
                )),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                  width: 220,
                  height: 47,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VerifationPage()));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue)),
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
      )

      // const Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [

      //   ],
      // )
    ]));
  }
}
