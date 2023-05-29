import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tauhidz/app/modules/introductionpage/login/login.dart';

class Lupapw extends StatelessWidget {
  const Lupapw({super.key});

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

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          children: [
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
                    horizontal: constraints.maxWidth * 0.2,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: constraints.maxHeight * 0.1,
                      ),
                      Image.asset(
                        'assets/image/logou.png',
                        width: constraints.maxWidth * 0.8,
                        height: constraints.maxHeight * 0.3,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Color(0xffD9D9D9),
                child: Stack(
                  children: [
                    Container(
                      height: constraints.maxHeight * 0.6,
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
                            padding: EdgeInsets.only(
                              top: constraints.maxHeight * 0.1,
                              right: constraints.maxWidth * 0.2,
                            ),
                            child: Text(
                              'Lupa Password ?',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: constraints.maxWidth * 0.06,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: constraints.maxHeight * 0.00,
                              right: constraints.maxWidth * 0.3,
                            ),
                            child: Text(
                              'Masukkan alamat email Anda',
                              style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: constraints.maxWidth * 0.025,
                              ),
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.02),
                          Container(
                            width: constraints.maxWidth * 0.75,
                            height: constraints.maxHeight * 0.07,
                            decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Email',
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 15),
                              ),
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.10),
                          GestureDetector(
                            onTap: () {
                              // Aksi ketika tombol "Kirim" ditekan
                            },
                            child: Container(
                              width: constraints.maxWidth * 0.75,
                              height: constraints.maxHeight * 0.07,
                              decoration: BoxDecoration(
                                color: Color(0xffE08008),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: Text(
                                  'Kirim',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: constraints.maxWidth * 0.045,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.02),
                        ],
                      ),
                    ),
                    Positioned(
                      top: constraints.maxHeight * 0.035,
                      left: constraints.maxWidth * 0.15,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Container(
                          width: constraints.maxWidth * 0.08,
                          height: constraints.maxWidth * 0.08,
                          decoration: BoxDecoration(
                            color: Color(0xffE08008),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

