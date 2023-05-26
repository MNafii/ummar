import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tauhidz/app/modules/Nilai/nilaidasar.dart';
import 'package:tauhidz/app/modules/Nilai/nilailanjutan.dart';
import 'package:tauhidz/app/modules/kalendernilai/kalendernilai.dart';

class tahfidz extends StatelessWidget {
  const tahfidz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(top: 10, left: 20),
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                Text(
                  'Tahfidz',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Kelas 5 / Semester Ganjil',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color.fromRGBO(159, 159, 159, 1)),
                )
              ],
            ),
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(),
          child: SizedBox(
            width: 30,
            height: 30,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => nilaidasar())));
              },
              child: Ink(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Color.fromRGBO(224, 128, 8, 1),
                ),
                child: Icon(
                  CupertinoIcons.arrow_left,
                  size: 18,
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          shrinkWrap: true,
          children: [
            Column(children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => nilailanjutan())));
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
                            'Tambah Siswa',
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
              Container(
                child: Padding(padding: EdgeInsets.only(top: 22)),
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Kalendernilai())));
                  },
                  child: Container(
                      width: 315,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(143, 69, 82, 1),
                        image: DecorationImage(
                            image: Image.asset("assets/image/MaskGroup2.png")
                                .image,
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
                              Row(
                                children: [
                                  InkWell(
                                    child: Text(
                                      'Lihat Siswa',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                  ),
                                ],
                              ),
                            ],
                          ))))
            ])
          ]),
    );
  }
}
