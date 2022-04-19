import 'package:flutter/material.dart';
import 'package:flutter/src/material/date_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TimeOfDay dayTime = TimeOfDay(hour: 07, minute: 00);

  _selectTime(BuildContext context) async {
    TimeOfDay? _timePicker =
        await showTimePicker(context: context, initialTime: dayTime);
    if (_timePicker != null && _timePicker != dayTime) {
      setState(() {
        dayTime = _timePicker;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
          'Alarm Setting',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.amberAccent,
                ),
                onPressed: () {
                  print("Clicked");
                  _selectTime(context);
                },
                child: Text(
                  'Set Alarm',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

void main() {
  DateTime dt = DateTime.now();
  DateTime birthDate = DateTime(1990, 05, 14, 7, 12, 22);
  print("Current Datetime " + dt.toString());
  print("Birthdate is " + birthDate.toString());
  print("Birthdate Year " + birthDate.year.toString());
  print("Birthdate Month " + birthDate.month.toString());
  print("Birthdate Day " + birthDate.day.toString());
  print("Birthdate Hour " + birthDate.hour.toString());
  print("Birthdate Minutes " + birthDate.minute.toString());
  print("Birthdate Second " + birthDate.second.toString());

  print("${birthDate.year}/${birthDate.month}/${birthDate.day}");
}
