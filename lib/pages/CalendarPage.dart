import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime focuseDay = DateTime.now();
  DateTime selectDay = DateTime.now();
  CalendarFormat format = CalendarFormat.month;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text(
            'Calendar event',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 25),
          )),
      body: TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime(1990),
        lastDay: DateTime(2060),
        calendarFormat: format,
        startingDayOfWeek: StartingDayOfWeek.monday,
        onFormatChanged: (CalendarFormat _format) {
          setState(() {
            format = _format;
          });
        },
        onDaySelected: (DateTime selectedDay, DateTime focusDay) {
          setState(() {
            selectDay = selectedDay;
            focuseDay = focusDay;
          });
        },
        selectedDayPredicate: (day) {
          return isSameDay(selectDay, day);
        },
        headerStyle: const HeaderStyle(
            titleTextStyle:
                TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            leftChevronVisible: false,
            formatButtonShowsNext: false,
            rightChevronVisible: false,
            headerPadding: EdgeInsets.all(13),
            titleCentered: true),
        calendarStyle: CalendarStyle(
            weekendDecoration: BoxDecoration(
                // shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5)),
            defaultDecoration: BoxDecoration(
                // shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5)),
            isTodayHighlighted: true,
            todayDecoration: BoxDecoration(
                color: Colors.blue,
                // shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5)),
            selectedDecoration: BoxDecoration(
                //  shape: BoxShape.rectangle,
                color: Colors.white,
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(28)),
            selectedTextStyle: TextStyle(color: Colors.black)),
      ),
    );
  }
}
