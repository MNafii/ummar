// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tauhidz/app/modules/dashboard/dashboard.dart';
import 'package:tauhidz/app/modules/Icon/infaq/detailInfaq.dart';
import '../../../../style/app_color.dart';

// ignore: camel_case_types
class isiNilai extends StatelessWidget {
  const isiNilai({super.key});

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
            child: Text(
              'isiNilai/Shodaqoh',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.black),
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
                    MaterialPageRoute(builder: (context) => Dashboard()),
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            width: MediaQuery.of(context).size.width,
            // height: 300,
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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.list_dash,
                            color: AppColor.primary,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Tugas',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.clock_fill,
                            color: Colors.red,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '5/03/2023',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'Murajaah',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20, top: 5),
                              width: 280,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: AppColor.secondarySoft),
                              ),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.all(10),
                                child: Text(
                                  'Ayat 135-140',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Checkbox(
                              value: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.lightGreen,
                              onChanged: (bool? value) {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'Ziyadah',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20, top: 5),
                              width: 280,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: AppColor.secondarySoft),
                              ),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.all(10),
                                child: Text(
                                  'Ayat 135-140',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Checkbox(
                              value: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.lightGreen,
                              onChanged: (bool? value) {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'Tilawah',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20, top: 5),
                              width: 280,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: AppColor.secondarySoft),
                              ),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.all(10),
                                child: Text(
                                  'Ayat 135-140',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Checkbox(
                              value: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.lightGreen,
                              onChanged: (bool? value) {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, top: 20),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.doc_text,
                        color: AppColor.primary,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Catatan Orang Tua',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  height: 100,
                  child: TextField(
                    cursorRadius: const Radius.circular(10),
                    // width: MediaQuery.of(context).size.width,
                    maxLines: 10,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      labelText: 'Masukkan Catatan (Opsional)',
                      labelStyle: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: AppColor.secondarySoft,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: AppColor.secondPrimary,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Kirim',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        const Icon(
                          CupertinoIcons.paperplane_fill,
                          size: 15,
                          color: Colors.white,
                        )
                      ],
                    ),
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
