import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendanceTable extends StatefulWidget {
  const AttendanceTable({Key? key}) : super(key: key);

  @override
  State<AttendanceTable> createState() => _AttendanceTableState();
}

class _AttendanceTableState extends State<AttendanceTable> {
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
            DataTable(
              columns: const [
                DataColumn(label: Text('Day')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('HRS/MINS')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text(
                    'Aug. 1',
                    style: GoogleFonts.lora(fontWeight: FontWeight.bold),
                  )),
                  DataCell(Text(
                    'Present',
                    style: GoogleFonts.lora(fontWeight: FontWeight.bold),
                  )),
                  DataCell(Text(
                    '8 hr. 03 min',
                    style: GoogleFonts.lora(fontWeight: FontWeight.bold),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text(
                    'Aug. 2',
                    style: GoogleFonts.lora(fontWeight: FontWeight.bold),
                  )),
                  DataCell(Text(
                    'Half',
                    style: GoogleFonts.lora(fontWeight: FontWeight.bold),
                  )),
                  DataCell(Text(
                    '4 hr. 03 min',
                    style: GoogleFonts.lora(fontWeight: FontWeight.bold),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text(
                    'Aug. 3',
                    style: GoogleFonts.lora(fontWeight: FontWeight.bold),
                  )),
                  DataCell(Text(
                    'Present',
                    style: GoogleFonts.lora(fontWeight: FontWeight.bold),
                  )),
                  DataCell(Text(
                    '8 hr. 03 min',
                    style: GoogleFonts.lora(fontWeight: FontWeight.bold),
                  )),
                ]),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Note: After a successful Facial Recognition, Follow a prompts of Turn on location',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18, decoration: TextDecoration.underline),
              ),
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
