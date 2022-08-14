import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrm_face/hrm_face/attendance/attendace_content.dart';
import 'package:hrm_face/hrm_face/attendance/attendance_table.dart';
import 'package:lottie/lottie.dart';

class Failed extends StatelessWidget {
  const Failed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_fyntrwwe.json',
                height: 200),
            Text(
              'Failed!',
              style:
                  GoogleFonts.lora(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Lets Work!',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const Text(
              'Lets Work!',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const AttendanceTable())));
              },
              child: const Text(
                'Try Again',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w700,
                    fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}
