import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tauhidz/app/modules/Icon/Nilainya/Nilai/nilaidasar.dart';
import 'package:tauhidz/app/modules/Icon/Nilainya/tahfidz/tahfidz.dart';

class nilailanjutan extends StatefulWidget {
  @override
  State<nilailanjutan> createState() => _nilailanjutanState();
}

class _nilailanjutanState extends State<nilailanjutan> {
  String? selectedValue;
  String? selectedValueDua;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 250),
          child: Text(
            "Nilai",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: SizedBox(
            width: 20,
            height: 20,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => nilaidasar())));
              },
              child: Ink(
                decoration: ShapeDecoration(
                  color: Color.fromRGBO(224, 128, 8, 1),
                  shape: CircleBorder(),
                ),
                child: Icon(
                  CupertinoIcons.arrow_left,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        children: [
          Container(
            padding: EdgeInsets.only(left: 195),
            child: Text(
              'Pilih Semester dan Pilih Kelas',
              style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            alignment: Alignment.centerLeft,
            child: Container(
              // padding: const EdgeInsets.symmetric(horizontal: 170.0),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  height: 30,
                  width: 60,
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey),
                  child: Row(
                    children: const [
                      Icon(Icons.filter_alt_outlined),
                      Text('Filter')
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            children: [
              Container(
                width: 115,
                height: 30,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(143, 69, 82, 1),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'Semester Ganjil',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 20)),
              Container(
                width: 115,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'Semester Genap',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
            width: 290,
            height: 55,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffB7B7B7),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: DropdownButton<String?>(
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              },
              hint: Text('Pilih Kelas'),
              underline: SizedBox(),
              isExpanded: true,
              items: ["Kelas 1", "Kelas 2", "Kelas 3"]
                  .map<DropdownMenuItem<String?>>(
                    (e) => DropdownMenuItem(
                      child: Text(e.toString()),
                      value: e,
                    ),
                  )
                  .toList(),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 500)),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => tahfidz()),
              );
            },
            child: Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(224, 128, 8, 1),
                  borderRadius: BorderRadius.circular(15)),
              alignment: Alignment.center,
              child: Text(
                'Selanjutnya',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
