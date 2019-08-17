import 'package:flutter/material.dart';
import 'package:mobile_assignment_one/time_card.dart';
import 'dart:math';

class TimeTable extends StatefulWidget {
  @override
  _TimeTableState createState() => new _TimeTableState();

}

class _TimeTableState extends State<TimeTable> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'Time-Table',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 13.0,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(choices[0].icon),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TimeCard()));
              },
            )
          ],
        ),

        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: [
              DataColumn(
                label: Text(
                  'ID',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Project',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Total Hours',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Breaks',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Work Hours',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
              ),

            ],

            rows: [
              DataRow(cells: [
                DataCell(
                  Text(
                    '1',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    'Google',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '8',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),

                //Employee 1 break

                DataCell(
                  Text(
                    '2',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),

                //Employee 1 total work hours

                DataCell(
                  Text(
                    '6',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),

              ]),

              //Employee 2

              DataRow(cells: [
                DataCell(
                  Text(
                    '2',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    'Facebook',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '5',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),

                //Employee 2 total work hours

                DataCell(
                  Text(
                    '4',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.icon});

  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(icon: Icons.add),
];
