import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';


import '../../../../style/app_color.dart';
import '../../../dashboard/dashboard.dart';

class Kalender extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<Kalender> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  late Map<DateTime, List<dynamic>> _events;

  @override
  void initState() {
    super.initState();
    _events = {
      DateTime(2023, 5, 15): ['Event 1', 'Event 2'],
      DateTime(2023, 5, 20): ['Event 3'],
      DateTime(2023, 5, 22): ['Event 4'],
    };
  }

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Kritik Saran',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black),
                ),
                Text(
                  'Kirimkan Kritik dan Saran Anda',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: const Color(0xff9F9F9F)),
                ),
              ],
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
                    MaterialPageRoute(
                      builder: (context) => const Dashboard(),
                    ),
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
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: TableCalendar(
              // onDayLongPressed: ,
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: AppColor.secondPrimary,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                ),
                isTodayHighlighted: true,
                selectedDecoration: BoxDecoration(
                  color: AppColor.primary,
                  shape: BoxShape.rectangle,
                  // borderRadius: BorderRadius.circular(5),
                ),
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,
              focusedDay: today,
              firstDay: DateTime.utc(2022, 1, 1),
              lastDay: DateTime.utc(2050, 1, 1),
              rowHeight: 40,
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                leftChevronIcon: Icon(
                  CupertinoIcons.chevron_left_square,
                  color: Colors.grey,
                  size: 30,
                ),
                rightChevronIcon: Icon(
                  CupertinoIcons.chevron_right_square,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
              availableGestures: AvailableGestures.all,
              onDaySelected: _onDaySelected,
              selectedDayPredicate: (day) => isSameDay(day, today),
            ),
          )
        ],
      ),
    );
  }
}
