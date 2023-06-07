// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tauhidz/app/modules/Icon/agenda/agenda.dart';
import 'package:tauhidz/app/modules/Icon/Nilainya/Nilai/nilaidasar.dart';
import 'package:tauhidz/app/modules/Icon/Pembayaran/filterpembayaran/filterpembayaran.dart';
import 'package:tauhidz/app/modules/Icon/kehadiran/kehadiran.dart';
import 'package:tauhidz/app/modules/Icon/kritikSaran/kritikSaran.dart';
import 'package:tauhidz/app/modules/Icon/KalenderPendidikan/kalender/kalender.dart';
import 'package:tauhidz/app/modules/Icon/infaq/infaq.dart';
import 'package:tauhidz/app/modules/home/home%20copy.dart';
import 'package:tauhidz/app/modules/notifikasi/notifikasi.dart';
import '../Icon/Pengumuman/pegumuman.dart';
import '../../style/app_color.dart';

class Dashboard extends StatelessWidget {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedDate =
        DateFormat('EEEE ,dd MMMM yyyy').format(selectedDate);
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: ClipOval(
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Notifikasi()),
                      );
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
                Row(
                  children: [
                    SizedBox(
                        width: 10), // Menambahkan jarak kosong di sebelah kiri
                    Text(
                      'Profil Anak',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.all(5),
                        child: Text(
                          DateFormat('EEEE, d MMMM yyyy')
                              .format(DateTime.now()),
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
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
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
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
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notifikasi()),
              );
            },
            child: Container(
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
          ),
          SizedBox(
            height: 10,
          ),

          // New Button Update

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Layer Satu
              Column(
                children: [
                  GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => const Siswa()),
                    //   );
                    // },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // Atur posisi bayangan
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: AppColor.primary,
                      ),
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                        child: Image.asset(
                          'assets/icons/nilai.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 30),
                    child: Text(
                      'Nilai',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Pengumuman()),
                      );
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // Atur posisi bayangan
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: AppColor.primary,
                      ),
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                        child: Image.asset(
                          'assets/icons/pengumuman.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 30),
                    child: Text(
                      'Pengumuman',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Pengumuman()),
                      );
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // Atur posisi bayangan
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: AppColor.primary,
                      ),
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                        child: Image.asset(
                          'assets/icons/kehadiran.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 30),
                    child: Text(
                      'Kehadiran',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),

              SizedBox(
                width: 15,
              ),

              // Layer Dua
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Kalender()),
                      );
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // Atur posisi bayangan
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: AppColor.primary,
                      ),
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                        child: Image.asset(
                          'assets/icons/kalender.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 12),
                    child: Text(
                      '  Kalender\nPendidikan',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => const Agenda()),
                    //   );
                    // },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // Atur posisi bayangan
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: AppColor.primary,
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 4),
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Image.asset(
                          'assets/icons/agenda.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 30),
                    child: Text(
                      'Agenda',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => const Agenda()),
                    //   );
                    // },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // Atur posisi bayangan
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: AppColor.primary,
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 4),
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Image.asset(
                          'assets/icons/infaq.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 30),
                    child: Text(
                      'Infaq / Shodaqoh',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),

              // Layer Tiga
              Column(
                children: [
                  GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => Tugas()),
                    //   );
                    // },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // Atur posisi bayangan
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: AppColor.primary,
                      ),
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                        child: Image.asset(
                          'assets/icons/pembayaran.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 30),
                    child: Text(
                      'Tugas',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => Tugas()),
                    //   );
                    // },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // Atur posisi bayangan
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: AppColor.primary,
                      ),
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                        child: Image.asset(
                          'assets/icons/kritiksaran.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 30),
                    child: Text(
                      'Kritik Saran',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    height: 70,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 28, bottom: 30),
                  ),
                ],
              ),

              SizedBox(
                width: 0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
