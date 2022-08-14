import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrm_face/hrm_face/otp_screen.dart';
import 'package:hrm_face/hrm_face/success_screen.dart';

class TimeIn extends StatelessWidget {
  const TimeIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Online Biometrics',
            style: GoogleFonts.nunito(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12),
            child: Text(
              'Note: After a successful Facial Recognition, Follow a prompts of Turn on location',
              textAlign: TextAlign.center,
              style: GoogleFonts.lora(
                  fontSize: 18, decoration: TextDecoration.underline),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const SuccessScreen())));
            },
            child: Container(
              padding: const EdgeInsets.only(
                  left: 55, right: 55, bottom: 10, top: 10),
              // ignore: sort_child_properties_last
              child: const Text(
                'Time-In',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: const Color(0xff017DFF),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const OtpScreen())));
            },
            child: Container(
              padding: const EdgeInsets.only(
                left: 48,
                right: 48,
                bottom: 10,
                top: 10,
              ),
              // ignore: sort_child_properties_last
              child: const Text(
                'Time-Out',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: const Color(0xff017DFF),
            ),
          ),
        ],
      ),
    );
  }
}
