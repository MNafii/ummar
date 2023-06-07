import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tauhidz/app/modules/Icon/Nilainya/Nilai/nilailanjutan.dart';
import 'package:tauhidz/app/modules/home/home.dart';

import 'akademiknilai.dart';
import 'nilaiubudiyah.dart';

class nilaidasar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 250),
          child: Text(
            "Nilai",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: SizedBox(
            width: 20,
            height: 20,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
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
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Pilih Jenis Penilaian',
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Text(
                  'Pilih Akademik,Tahfidz/Ubudiyah',
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => akademiknilai())));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(10, 10),
                        spreadRadius: 5,
                        blurRadius: 10,
                        color: Color(0xffEFEFEF))
                  ]),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: Image.asset("assets/image/gambaranak.png").image,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 50)),
                        Text(
                          'Akademik',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => nilailanjutan())));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(10, 10),
                        spreadRadius: 5,
                        blurRadius: 10,
                        color: Color(0xffEFEFEF))
                  ]),
              width: 315,
              height: 80,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: Image.asset("assets/image/mengaji.png").image,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 50)),
                        Text(
                          'Tahfidz',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => nilaiubudiyah())));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(10, 10),
                        spreadRadius: 5,
                        blurRadius: 10,
                        color: Color(0xffEFEFEF))
                  ]),
              width: 315,
              height: 80,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: Image.asset("assets/image/sholat.png").image,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 50)),
                        Text(
                          'Ubudiyah',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
