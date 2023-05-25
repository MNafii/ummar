import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tauhidz/app/modules/login/login.dart';

class Awalan extends StatelessWidget {
  const Awalan({super.key});

  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 24, fontFamily: 'poppins'),
        bodyTextStyle: TextStyle(
            fontSize: 13, color: Color(0xff9F9F9F), fontFamily: 'poppins'),
        bodyPadding: EdgeInsets.all(10));
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          footer: DecoratedBox(decoration: BoxDecoration(color: Colors.red)),
          title: 'Lihat Nilai',
          body:
              'Lihat nilai putra putri Anda dengan mudah menggunakan aplikasi ini.',
          decoration: pageDecoration,
          image: Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.asset(
                'assets/image/Group3.png',
                width: 263,
                height: 240,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
        PageViewModel(
          title: 'Ikut Serta Dalam Penilaian ',
          body:
              'Ikut serta dalam penilaian pembelajaran anak?Dengan aplikasi ini Anda para orang tua bisa ikut serta dalam penilaian pembelajaran anak secara mudah.',
          decoration: pageDecoration,
          image: Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.asset(
                'assets/image/Group2.png',
                width: 350,
              ),
            ],
          ),
        ),
        PageViewModel(
          title: 'Pantau Progres dan Perkembangan Anak',
          body:
              'Membantu Anda dalam memantau progres dan perkembangan anak dengan mudah.',
          decoration: pageDecoration,
          image: Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.asset(
                'assets/image/Group1.png',
                width: 350,
              ),
            ],
          ),
        ),
      ],
      onDone: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      },
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: false,
      dotsFlex: 3,
      nextFlex: 1,
      skipOrBackFlex: 1,
      back: Icon(Icons.arrow_back),
      skip: Text(
        'Lewati',
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400, fontSize: 16, color: Colors.grey),
      ),
      next: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: Color(0xffE08008),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
      done: Container(
        width: 100,
        height: 48,
        decoration: BoxDecoration(
            color: Color(0xffE08008), borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.center,
        child: Text(
          'Lanjut',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400, color: Colors.white, fontSize: 14),
        ),
      ),
      bodyPadding: EdgeInsets.only(top: 71),
      dotsDecorator: DotsDecorator(
        size: Size(10, 10),
        color: Colors.grey,
        activeSize: Size(22, 10),
        activeColor:
            Colors.orange, 
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
