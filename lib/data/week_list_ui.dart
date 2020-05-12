import 'package:flutter/material.dart';
import 'package:tuitubapp/domain/week.dart';

class WeekList extends StatefulWidget {
  @override
  _WeekListState createState() => _WeekListState();
}

class _WeekListState extends State<WeekList> {
//  @override
//  void initState() {
//    clearFilter();
//    super.initState();
//  }

  final workouts = <Week>[
    Week(
        title: 'Test1',
        author: 'Max1',
        description: 'Test Workout1',
        level: 'Beginner'),
    Week(
        title: 'Test2',
        author: 'Max2',
        description: 'Test Workout2',
        level: 'Intermediate'),
    Week(
        title: 'Test3',
        author: 'Max3',
        description: 'Test Workout3',
        level: 'Advanced'),
    Week(
        title: 'Test4',
        author: 'Max4',
        description: 'Test Workout4',
        level: 'Beginner'),
    Week(
        title: 'Test5',
        author: 'Max5',
        description: 'Test Workout5',
        level: 'Intermediate'),
  ];

  @override
  Widget build(BuildContext context) {
    var workoutsList = Expanded(
      child: ListView.builder(
          itemCount: workouts.length,
          itemBuilder: (context, i) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 2.0,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          child: Text("Subject"),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border(
                                bottom: BorderSide(width: 2.0, color: Colors.blue)),
                          )),
                    ],
                  ),
                  Row(
                    children: <Widget>[Text("aaa")],
                  )
                ],
              ),
            );
          }),
    );

    return Column(
      children: <Widget>[
        workoutsList,
      ],
    );
  }
}

Widget subtitle(BuildContext context, Week week) {
  var color = Colors.grey;
  double indicatorLevel = 0;

  switch (week.level) {
    case 'Beginner':
      color = Colors.green;
      indicatorLevel = 0.33;
      break;
    case 'Intermediate':
      color = Colors.yellow;
      indicatorLevel = 0.66;
      break;
    case 'Advanced':
      color = Colors.red;
      indicatorLevel = 1;
      break;
  }

  return Row(
    children: <Widget>[
      Expanded(
          flex: 1,
          child: LinearProgressIndicator(
              backgroundColor: Theme.of(context).textTheme.headline6.color,
              value: indicatorLevel,
              valueColor: AlwaysStoppedAnimation(color))),
      SizedBox(width: 10),
      Expanded(
          flex: 3,
          child: Text(week.level,
              style: TextStyle(color: Theme.of(context).textTheme.title.color)))
    ],
  );
}
