// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tauhidz/app/modules/infaq/infaq.dart';
import '../../style/app_color.dart';

// ignore: use_key_in_widget_constructors
class DetailInfaq extends StatelessWidget {
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
              'Infaq/Shodaqoh',
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
                    MaterialPageRoute(builder: (context) => const Infaq()),
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
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Image.asset(
              'assets/image/infaqSatu.png',
              height: 120,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.contain,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  'sound untuk hari raya idul fitri',
                  style: GoogleFonts.poppins(
                      fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10, top: 10),
                // alignment: Alignment.centerRight,
                child: Text(
                  '80%',
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, top: 5),
            child: LinearPercentIndicator(
              barRadius: const Radius.circular(10),
              animation: true,
              lineHeight: 12.0,
              percent: 0.8,
              progressColor: const Color(0xffFFC700),
              backgroundColor: AppColor.secondarySoft,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rp 1.300.000',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '/',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Rp 1.600.000',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 30, bottom: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              'sound untuk hari raya idul fitri',
              style: GoogleFonts.poppins(
                  fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ),
          Card(
            child: ExpansionTile(
              backgroundColor: Colors.white,
              tilePadding: const EdgeInsets.all(10),
              title: Text(
                'Pembayaran Lewat Bank',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: AppColor.secondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              children: [
                ListTile(
                  contentPadding: EdgeInsets.all(20),
                  title: Text(
                    'Transfer  ke rekening : 0098764262882y8288',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              backgroundColor: Colors.white,
              tilePadding: const EdgeInsets.all(10),
              title: Text(
                'Pembayaran langsung',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: AppColor.secondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              children: [
                ListTile(
                  contentPadding: EdgeInsets.all(20),
                  title: Text(
                    'Transfer  ke rekening : 0098764262882y8288',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
