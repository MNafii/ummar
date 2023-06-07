import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';


class Koneksi2 extends StatelessWidget {
  const Koneksi2({super.key});

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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 200),
        children: [
          Column(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Image.asset(
                      'assets/image/404.png',
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Halaman tidak ditemukan',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Kembali ke halaman awal',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 55),
                    GestureDetector(
                      onTap: () {
                        // Aksi ketika kontainer di klik
                      },
                      child: Container(
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffE08008),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Kembali',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
