//import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';
//import 'package:timesheetapp/Model/Employee.dart';
//import 'package:timesheetapp/View/timesheet_entries.dart';
//
//import '../main.dart';
//
//class MyHomePage extends StatefulWidget {
//  final username;
//  final password;
//  MyHomePage({this.username, this.password});
//  @override
//  _MyHomePageState createState() =>
//      _MyHomePageState(username: username, password: password);
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  final username;
//  final password;
//  _MyHomePageState({this.username, this.password});
//  String formatDate(DateTime date) {
//    return new DateFormat.yMMMMd().format(date);
//  }
//
//  Future<Null> getRefresh() async {
//    await Future.delayed(Duration(seconds: 3));
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          automaticallyImplyLeading: false,
//          title: Row(children: <Widget>[
//            Card(
//              shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(13.0),
//              ),
//              child: Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Text(
//                  username,
//                  style: TextStyle(
//                    fontWeight: FontWeight.bold,
//                    color: Colors.deepOrange,
//                    fontSize: 15.0,
//                  ),
//                ),
//              ),
//            ),
//            Center(child: Text('Timesheet Approval')),
//            SizedBox(
//              width: 41.0,
//            ),
//            IconButton(
//                icon: Icon(Icons.exit_to_app),
//                onPressed: () {
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => Login()));
//                }),
//          ]),
//        ),
//        body: RefreshIndicator(
//          onRefresh: getRefresh,
//          child: ListView.builder(
//              itemCount: Employee().empdata.length,
//              itemBuilder: (BuildContext context, int i) {
//                var data = Employee().empdata[i];
//                return Container(
//                  height: 130,
//                  child: Padding(
//                    padding: const EdgeInsets.only(top: 10.0),
//                    child: Card(
//                      shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(12.0),
//                      ),
//                      elevation: 7.0,
//                      child: ListTile(
//                        title: Padding(
//                          padding: const EdgeInsets.only(top: 12.0),
//                          child: Text("Timesheet Pending Approval"),
//                        ),
//                        leading: Container(
//                          width: 60.0,
//                          height: 60.0,
//                          decoration: BoxDecoration(
//                            image: DecorationImage(
//                              image: ExactAssetImage(
//                                  'assets/images/profile_pic.jpg'),
//                              fit: BoxFit.cover,
//                            ),
//                            borderRadius:
//                            BorderRadius.all(Radius.circular(30.0)),
//                          ),
//                        ),
//                        subtitle: Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: <Widget>[
//                            Row(children: <Widget>[
//                              Text("Resource Name"),
//                              SizedBox(
//                                width: 20.0,
//                              ),
//                              Text(data['ResourceName'])
//                            ]),
//                            Row(children: <Widget>[
//                              Text("Project Name"),
//                              SizedBox(
//                                width: 35.0,
//                              ),
//                              Text(data['ProjectName'])
//                            ]),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              children: <Widget>[
//                                Icon(
//                                  Icons.calendar_today,
//                                  color: Colors.pink,
//                                  size: 12.0,
//                                ),
//                                SizedBox(
//                                  width: 5.0,
//                                ),
//                                Text(formatDate(data['dates'][0]['date'])),
//                                Text(" - "),
//                                Text(formatDate(data['dates'][4]['date'])),
//                              ],
//                            )
//                          ],
//                        ),
//                        onTap: () {
//                          Navigator.push(
//                              context,
//                              new MaterialPageRoute(
//                                  builder: (context) => Timesheet(
//                                    empdata: Employee().empdata[i],
//                                  )));
//                        },
//                      ),
//                    ),
//                  ),
//                );
//              }),
//        ));
//  }
//}
