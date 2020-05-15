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

  final week = <Week>[
    Week(
        subject: "Java",
        teacher: "Abrorov R.",
        sub_type: "Praktika",
        room: 325,
        time: "8:30-9:50"),
    Week(
        subject: "C++",
        teacher: "Aliev O.",
        sub_type: "Maruza",
        room: 315,
        time: "9:50-11:20"),
    Week(
        subject: "Web",
        teacher: "Artikov M.",
        sub_type: "Praktika",
        room: 311,
        time: "8:30-9:50"),
    Week(
        subject: "MySQL",
        teacher: "Marks",
        sub_type: "Praktika",
        room: 325,
        time: "8:30-9:50"),
  ];

  @override
  Widget build(BuildContext context) {
    var weekList = Expanded(
      child: ListView.builder(
          itemCount: week.length,
          itemBuilder: (context, i) {
            return Container(
                child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5.0,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                            child: Container(
                              child: RichText(
                                text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  children: [
                                    WidgetSpan(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        child: Icon(Icons.subject),
                                      ),
                                    ),
                                    WidgetSpan(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2.0),
                                      child: Text(week[i].subject,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25)),
                                    ))
                                  ],
                                ),
                              ),
                              alignment: Alignment.center,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border(
                                  bottom: BorderSide(
                                      width: 2.0, color: Colors.blue)),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Icon(Icons.person)),
                        alignment: Alignment.center,
                      ),
                      Text(week[i].teacher)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          child: Column(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: RichText(
                                text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  children: [
                                    WidgetSpan(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        child: Icon(Icons.room),
                                      ),
                                    ),
                                    WidgetSpan(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2.0),
                                      child: Text(week[i].room.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                    ))
                                  ],
                                ),
                              )),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: RichText(
                                text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  children: [
                                    WidgetSpan(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        child: Icon(Icons.access_time),
                                      ),
                                    ),
                                    WidgetSpan(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2.0),
                                      child: Text(week[i].time,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                    ))
                                  ],
                                ),
                              )),
                        ],
                      ))
                    ],
                  )
                ],
              ),
            ));
          }),
    );

    return Column(
      children: <Widget>[
        weekList,
      ],
    );
  }
}