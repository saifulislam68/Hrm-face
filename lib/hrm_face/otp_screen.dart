import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/image/forgetimg.png',
            height: 150,
            width: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Enter Pin to Register',
            style: GoogleFonts.nunito(
                fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12.0, right: 12),
            child: Text(
              'Note: Your pin is provided by the Human  Resource Office',
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontSize: 18, decoration: TextDecoration.underline),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Enter a 5 digit pin',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: ((context) => const TimeIn())));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xff017DFF),
              ),
              padding: const EdgeInsets.all(10),
              // ignore: sort_child_properties_last
              child: const Text(
                'Proceed to Verify',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'I am already registerd',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
