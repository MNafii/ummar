import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tauhidz/app/modules/Icon/Nilainya/Nilai/nilaidasar.dart';
import 'package:tauhidz/app/modules/Icon/Nilainya/Nilai/nilailanjutan.dart';

import 'package:tauhidz/app/modules/Icon/KalenderPendidikan/kalendernilai/kalendernilai.dart';

import 'package:tauhidz/app/modules/Icon/Nilainya/tahfidz/lihatnilai.dart';

import 'isinilai.dart';

class tahfidz extends StatelessWidget {
  const tahfidz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 30,
              right: 10,
              left: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => nilaidasar()),
                    );
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xffE08008),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      CupertinoIcons.arrow_left,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Tahfidz',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 1),
                    Text(
                      'Kelas 5 / Semester Ganjil',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => lihatnilai())));
                },
                child: Container(
                  width: 315,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(143, 69, 82, 1),
                    image: DecorationImage(
                        image: Image.asset("assets/image/MaskGroup2.png").image,
                        fit: BoxFit.cover,
                        alignment: Alignment.centerRight),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(10, 10),
                          spreadRadius: 5,
                          blurRadius: 10,
                          color: Color(0xffEFEFEF)),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          child: Text(
                            'Lihat Nilai',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => isinilai())));
                },
                child: Container(
                  width: 315,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(143, 69, 82, 1),
                    image: DecorationImage(
                        image: Image.asset("assets/image/MaskGroup2.png").image,
                        fit: BoxFit.cover,
                        alignment: Alignment.centerRight),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(10, 10),
                          spreadRadius: 5,
                          blurRadius: 10,
                          color: Color(0xffEFEFEF)),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          child: Text(
                            'Isi Nilai Tugas',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
