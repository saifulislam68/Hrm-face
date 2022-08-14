import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendanceContent extends StatefulWidget {
  const AttendanceContent({Key? key}) : super(key: key);

  @override
  State<AttendanceContent> createState() => _AttendanceContentState();
}

class _AttendanceContentState extends State<AttendanceContent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'My Attendance This Month',
                style:
                    GoogleFonts.lora(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Day',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Status',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'HRS/MIN',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Aug. 1',
                      style: GoogleFonts.lora(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Present',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '8 hr. 03 min',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Note: After a successful Facial Recognition, Follow a prompts of Turn on location',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18, decoration: TextDecoration.underline),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Exit',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18, decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
