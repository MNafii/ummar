import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tauhidz/app/modules/Pengumuman/selengkapnya.dart';
import 'package:tauhidz/app/modules/agenda/unduhagenda.dart';

import '../dashboard/dashboard.dart';

class agenda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 10,
              right: 10,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xffE08008),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      CupertinoIcons.arrow_left,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Agenda',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 71, 71, 71).withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 2,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          'Pengajian dan Khataman Bersama Wali Murid',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Hari : Selasa',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 1),
                    Text(
                      'Tanggal : 28 Maret 2023',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 1),
                    Text(
                      'Tempat : Aula sekolah',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffE08008),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => unduhagenda()),
                      );
                    },
                    child: Text(
                      'Selengkapnya >',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }
}
