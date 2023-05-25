// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tauhidz/app/modules/agenda/agenda.dart';

import 'package:tauhidz/app/modules/Nilai/nilaidasar.dart';
import 'package:tauhidz/app/modules/kehadiran/kehadiran.dart';
import 'package:tauhidz/app/modules/kritikSaran/kritikSaran.dart';
import '../../style/app_color.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';
import '../Pengumuman/pegumuman.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationPage(),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 36),
        children: [
          SizedBox(
            height: 10,
          ),
          // user
          Container(
            margin: EdgeInsets.only(bottom: 16),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Container(
                        color: Color.fromARGB(113, 184, 183, 183),
                        width: 50,
                        height: 50,
                        child: Icon(
                          CupertinoIcons.person,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Assalamualaikum",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Nama',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            fontFamily: 'poppins',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: AppColor.primarySoft,
                  ),
                  child: IconButton(
                    icon: Icon(CupertinoIcons.bell),
                    color: Colors.black,
                    onPressed: () {
                      // ontap
                    },
                  ),
                ),
              ],
            ),
          ),

          // card anak...
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(bottom: 20),
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: AppColor.primary,
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.all(5),
                  child: Text(
                    'Jumat, 7 Maret 2023',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // Atur posisi bayangan
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: AppColor.secondarySoft,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Icon(
                            CupertinoIcons.person_alt,
                            color: Colors.white,
                            size: 70,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Nama',
                              style: GoogleFonts.poppins(
                                color: AppColor.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'NIS',
                              style: GoogleFonts.poppins(
                                color: AppColor.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'Kelas',
                              style: GoogleFonts.poppins(
                                color: AppColor.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'Semester',
                              style: GoogleFonts.poppins(
                                color: AppColor.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ':  Fatih Farhat',
                              style: GoogleFonts.poppins(
                                color: AppColor.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              ':  004',
                              style: GoogleFonts.poppins(
                                color: AppColor.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              ':  V (Lima)',
                              style: GoogleFonts.poppins(
                                color: AppColor.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              ':  Ganjil',
                              style: GoogleFonts.poppins(
                                color: AppColor.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          // Notifikasi
          Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  CupertinoIcons.bell,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '6 Notifikasi Belum Dilihat',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),

          // button-button
          Center(
            child: Column(
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => nilaidasar()),
                                );
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset:
                                          Offset(0, 3), // Atur posisi bayangan
                                    ),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: AppColor.primary,
                                ),
                                child: Icon(
                                  CupertinoIcons.doc,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Text(
                            //   'Nilai',
                            //   style: GoogleFonts.poppins(
                            //       fontSize: 12, fontWeight: FontWeight.w400),
                            // )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // Atur posisi bayangan
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: AppColor.primary,
                            ),
                            child: Icon(
                              CupertinoIcons.calendar_today,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Text(
                          //   '  Kalender\n Pendidikan',
                          //   style: GoogleFonts.poppins(
                          //       fontSize: 12, fontWeight: FontWeight.w400),
                          // )
                        ],
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset:
                                        Offset(0, 3), // Atur posisi bayangan
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: AppColor.primary,
                              ),
                              child: Icon(
                                CupertinoIcons.creditcard,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Text(
                            //   'Pembayaran',
                            //   style: GoogleFonts.poppins(
                            //       fontSize: 12, fontWeight: FontWeight.w400),
                            // )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Pengumuman()),
                              );
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset:
                                        Offset(0, 3), // Atur posisi bayangan
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: AppColor.primary,
                              ),
                              child: Icon(
                                CupertinoIcons.mail,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Text(
                          //   'Pengumuman',
                          //   style: GoogleFonts.poppins(
                          //       fontSize: 12, fontWeight: FontWeight.w400),
                          // )
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => agenda()),
                              );
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset:
                                        Offset(0, 3), // Atur posisi bayangan
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: AppColor.primary,
                              ),
                              child: Icon(
                                CupertinoIcons.list_dash,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Text(
                          //   'Agenda',
                          //   style: GoogleFonts.poppins(
                          //       fontSize: 12, fontWeight: FontWeight.w400),
                          // )
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => KritikSaran()),
                              );
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset:
                                        Offset(0, 3), // Atur posisi bayangan
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: AppColor.primary,
                              ),
                              child: Icon(
                                CupertinoIcons.chat_bubble_text,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Text(
                          //   'Kritik Saran',
                          //   style: GoogleFonts.poppins(
                          //       fontSize: 12, fontWeight: FontWeight.w400),
                          // )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Kehadiran()),
                              );
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset:
                                        Offset(0, 3), // Atur posisi bayangan
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: AppColor.primary,
                              ),
                              child: Icon(
                                CupertinoIcons.person_crop_square,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Text(
                          //   'Kehadiran',
                          //   style: GoogleFonts.poppins(
                          //       fontSize: 12, fontWeight: FontWeight.w400),
                          // )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // Atur posisi bayangan
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: AppColor.primary,
                            ),
                            child: Icon(
                              CupertinoIcons.gift_alt,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Text(
                          //   'Agenda',
                          //   style: GoogleFonts.poppins(
                          //       fontSize: 12, fontWeight: FontWeight.w400),
                          // )
                        ],
                      ),
                      SizedBox(
                        width: 60,
                        height: 60,
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Pencapaian Saat ini',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // Atur posisi bayangan
                      ),
                    ],
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
