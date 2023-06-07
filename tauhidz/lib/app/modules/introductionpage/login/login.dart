import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tauhidz/app/modules/dashboard/dashboard.dart';
import 'package:tauhidz/app/modules/home/home.dart';
import 'package:tauhidz/app/modules/introductionpage/lupapw/lupapw.dart';


class Login extends StatelessWidget {
  const Login({super.key});

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
                    horizontal: constraints.maxWidth * 0.15,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: constraints.maxHeight * 0.1,
                      ),
                      Image.asset(
                        'assets/image/logou.png',
                        width: constraints.maxWidth,
                        height: constraints.maxHeight * 0.3,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Color(0xffD9D9D9),
                child: Container(
                  height: constraints.maxHeight * 0.6,
                  width: constraints.maxWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                    color: Color(0xffF9F9F9),
                  ),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: constraints.maxHeight * 0.06,
                        right: constraints.maxWidth * 0.1,
                      ),
                      child: Text(
                        'Assalamualaikum,',
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
                        right: constraints.maxWidth * 0.1,
                      ),
                      child: Text(
                        'Silahkan masuk dengan akun anda,',
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: constraints.maxWidth * 0.03,
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
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
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
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: constraints.maxWidth * 0.1),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Lupapw()),
                                );
                              },
                              child: Text(
                                'Lupa Password?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: constraints.maxHeight * 0.02),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
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
                            'Masuk',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: constraints.maxWidth * 0.045,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.04),
                  ]),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
