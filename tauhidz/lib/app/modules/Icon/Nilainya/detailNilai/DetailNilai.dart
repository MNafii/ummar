// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:tauhidz/app/modules/dashboard/dashboard.dart';
<<<<<<< HEAD:tauhidz/lib/app/modules/detailNilai/DetailNilai.dart
import 'package:tauhidz/app/modules/home/home.dart';
import '../../style/app_color.dart';
=======
import '../../../../style/app_color.dart';
>>>>>>> ac0aba2fd398f0e4407754a50408bb0152a2b9d1:tauhidz/lib/app/modules/Icon/Nilainya/detailNilai/DetailNilai.dart

class DetailNilai extends StatelessWidget {
  const DetailNilai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(top: 26, bottom: 40),
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Detail Nilai',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black),
                ),
                Text(
                  'Kelas 5 / Semester Ganjil',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: const Color(0xff9F9F9F)),
                ),
              ],
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 26, left: 20, bottom: 40),
          child: SizedBox(
            width: 30,
            height: 30,
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Ink(
                  decoration: ShapeDecoration(
                      color: AppColor.secondPrimary,
                      shape: const CircleBorder()),
                  child: const Icon(
                    CupertinoIcons.arrow_left,
                    color: Colors.white,
                    size: 18,
                  ),
                )),
          ),
        ),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            margin: EdgeInsets.only(left: 37, bottom: 10),
            child: Text(
              'Sholat',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            // height: 270,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // Atur posisi bayangan
                ),
              ],
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.white,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Text(
                              'Nilai',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: AppColor.secondary,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '80',
                              style: GoogleFonts.poppins(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70),
                        child: Column(
                          children: [
                            Text(
                              'Predikat',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: AppColor.secondary,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'B',
                              style: GoogleFonts.poppins(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 30, top: 10),
                  child: Text(
                    'Deskripsi',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: AppColor.secondary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: AppColor.secondarySoft,
                      ),
                      color: Color.fromARGB(179, 244, 243, 243)),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 100),
                    child: Text(
                      'Bacaannya panjang pendeknya tepat  dan suara yang indah.',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
