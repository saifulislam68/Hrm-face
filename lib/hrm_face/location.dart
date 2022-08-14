import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrm_face/hrm_face/time_in.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

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
            'Online Biometrics',
            style: GoogleFonts.nunito(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12.0, right: 12),
            child: Text(
              'Note: After a successful Facial Recognition, Follow a prompts of Turn on location',
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontSize: 18, decoration: TextDecoration.underline),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Location > You are in',
            style: GoogleFonts.lora(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const TimeIn())));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xff017DFF),
              ),
              padding: EdgeInsets.all(10),
              // ignore: sort_child_properties_last
              child: const Text(
                'Save Location',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
