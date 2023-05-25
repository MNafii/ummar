import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilanak extends StatelessWidget {
  const Profilanak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      appBar: buildAppBar(),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          reverse: true,
          child: Body(),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xffD9D9D9),
      toolbarHeight: 100,
      leading: SizedBox(
        width: 80,
      ),
      title: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          right: 50,
        ),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Profil Anak',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
      ),
      elevation: 0,
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(20),
          children: [
            Column(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Stack(
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 10,
                                right:10,
                                top: 15,), 
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment
                                      .centerRight, 
                                  child: Text(
                                    'Kelas 5/Semester Ganjil',
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height:
                                        10), 
                                Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/image/Name.png', 
                                    width: 100, 
                                    height: 100, 
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center, 
                                  child: Text(
                                    'Fatih Farhat',
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                 Align(
                                  alignment: Alignment.center, 
                                  child: Text(
                                    'Malang, 23 September 2012',
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          width: 317,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.1),
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}
