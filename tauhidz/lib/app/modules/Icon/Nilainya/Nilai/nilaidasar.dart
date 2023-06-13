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
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => akademiknilai())),
                  );
                },
                child: Container(
                  width: 315,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(10, 10),
                        spreadRadius: 5,
                        blurRadius: 10,
                        color: Color(0xffEFEFEF),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 80,
                        height: 90,
                        margin: EdgeInsets.only(
                            left:
                                20), // Menambahkan jarak antara container gambar dengan teks
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/image/gambaranak.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          'Akademik',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => nilailanjutan())),
                  );
                },
                child: Container(
                  width: 315,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(10, 10),
                        spreadRadius: 5,
                        blurRadius: 10,
                        color: Color(0xffEFEFEF),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(
                            left:
                                30), // Menambahkan jarak antara container gambar dengan teks
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/image/mengaji.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          'Tahfidz',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => nilaiubudiyah())),
                  );
                },
                child: Container(
                  width: 315,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(10, 10),
                        spreadRadius: 5,
                        blurRadius: 10,
                        color: Color(0xffEFEFEF),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 40,
                        margin: EdgeInsets.only(
                            left:
                                20), // Menambahkan jarak antara container gambar dengan teks
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/image/sholat.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          'Ubudiyah',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
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
