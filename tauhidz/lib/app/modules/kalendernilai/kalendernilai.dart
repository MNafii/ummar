import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tauhidz/app/modules/tahfidz/tahfidz.dart';

class kalendernilai extends StatefulWidget {
  const kalendernilai({super.key});

  @override
  State<kalendernilai> createState() => _kalendernilaiState();
}

class _kalendernilaiState extends State<kalendernilai> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Column(
            children: [
              Text(
                "Isi Nilai Tugas Tahfidz",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Kelas 5 / Semester Ganjil',
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 13),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Text(
                  'Jus 1',
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 13),
                ),
              )
            ],
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: SizedBox(
            width: 20,
            height: 20,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => tahfidz())));
              },
              child: Ink(
                decoration: ShapeDecoration(
                  color: Color.fromRGBO(224, 128, 8, 1),
                  shape: CircleBorder(),
                ),
                child: Icon(
                  CupertinoIcons.arrow_left,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
