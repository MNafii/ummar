import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tauhidz/app/modules/dashboard/dashboard.dart';
import 'package:tauhidz/app/modules/introductionpage/lupapw/lupapw.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

class Profilortu extends StatelessWidget {
  const Profilortu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late File _file;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> _pickFile() async {
    final selectedFile = await FilePicker.platform.pickFiles();
    if (selectedFile == null || selectedFile.files.isEmpty) {
      // User tidak memilih file
      return;
    }

    final filePath = selectedFile.files.first.path;
    if (filePath == null) {
      // Path file null
      return;
    }

    setState(() {
      _file = File(filePath);
    });

    // Lakukan proses upload file ke server di sini
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: constraints.maxHeight * 0.4,
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
              ),
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth * 0.1,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Profil Orang Tua',
                          style: TextStyle(
                            color: Color.fromARGB(255, 5, 5, 5),
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 75),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/image/User.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Color(0xffD9D9D9),
                child: Container(
                  height: constraints.maxHeight *
                      0.6, // Menggunakan proporsi tinggi responsif
                  width: constraints.maxWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                    color: Color(0xffF9F9F9),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 20),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/image/iconuser.png',
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nama',
                                  style: GoogleFonts.poppins(
                                    color: Color.fromARGB(255, 7, 7, 7),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Budiono',
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 145, top: 10),
                              child: GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      ),
                                    ),
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        child: SizedBox(
                                          height: 200,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 50),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Column(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        // Mengaktifkan kamera
                                                        ImagePicker()
                                                            .getImage(
                                                          source: ImageSource
                                                              .camera,
                                                        )
                                                            .then((pickedFile) {
                                                          if (pickedFile ==
                                                              null) return;
                                                          setState(() {
                                                            _file = File(
                                                              pickedFile.path,
                                                            );
                                                          });
                                                        });
                                                      },
                                                      child: Image.asset(
                                                        'assets/image/kamera.png',
                                                        width: 50,
                                                        height: 50,
                                                      ),
                                                    ),
                                                    Text('Kamera'),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: _pickFile,
                                                      child: Image.asset(
                                                        'assets/image/file.png',
                                                        width: 50,
                                                        height: 50,
                                                      ),
                                                    ),
                                                    Text('File'),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      'assets/image/Ellipse.png',
                                      width: 50,
                                      height: 50,
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/image/iconphone.png',
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Telephon',
                                  style: GoogleFonts.poppins(
                                    color: Color.fromARGB(255, 7, 7, 7),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '1234567890',
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/image/iconhome.png',
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Alamat',
                                  style: GoogleFonts.poppins(
                                    color: Color.fromARGB(255, 7, 7, 7),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'jl.Anggrek  ',
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: constraints.maxWidth *
                            0.8, // Menggunakan proporsi lebar responsif
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xff8F4552),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 37),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Log Out',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xff8F4552),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]);
      },
    );
  }
}
