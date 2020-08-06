//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';
//import 'package:intl/intl.dart';
//import 'package:timesheetapp/View/Profile.dart';
//
//class Timesheet extends StatefulWidget {
//  final empdata;
//  Timesheet({this.empdata});
//  @override
//  _TimesheetState createState() => _TimesheetState(empdata: empdata);
//}
//
//class _TimesheetState extends State<Timesheet> {
//  final empdata;
//  _TimesheetState({this.empdata});
//
//  String FormatDate(DateTime dateTime) {
//    return new DateFormat.d().format(dateTime);
//  }
//
//  String formatDate(DateTime date) {
//    return new DateFormat.yMMMMd().format(date);
//  }
//
//  void initState() {
//    super.initState();
//  }
//
//  bool _isenabled = true;
//
//  List approved_data = [];
////  dynamic approved_hr;
////  approved_sum() {
////    for (int i = 0; i < approved_data.length; i++) {
////      approved_hr = "00.00" + approved_data[i];
////    }
////  }
//  bool styleOBJ = true;
//  List data = [];
//  double sum = 0;
////  _sum() {
////    empdata['dates'].forEach((item) {
////      sum = sum + item.total;
////    });
////  }
//  int value = 0;
////  _onSelected(int index) {
////    for (int i = 0; i < approved_data.length; i++) {
////      setState(() => i = value);
////    }
////  }
//
////  _selected() {
////    setState(() {
////      approved_data = data;
////    });
////  }
//
////  _remove() {
////    for (var datas in empdata['dates']) {
////      if (datas.is_active == true) {
////        data.add(datas);
////      }
////    }
////    print(data);
////  }
//  int _SelectedIndex = 0;
//
//  Color textColor = Colors.blue;
//  bool val = false;
//  @override
//  Widget build(BuildContext context) {
//    final width = MediaQuery.of(context).size.width;
//    final height = MediaQuery.of(context).size.height;
//
//    return Scaffold(
//      appBar: AppBar(
////        automaticallyImplyLeading: false
//        title: Row(children: <Widget>[
//          Text(empdata['ResourceName']),
//          SizedBox(
//            width: 10.0,
//          ),
//          Card(
//              color: Colors.deepOrange,
//              shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(15.0),
//              ),
//              child: Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Text(
//                  empdata['id'],
//                  style: TextStyle(
//                      fontSize: 15.0,
//                      color: Colors.white,
//                      fontWeight: FontWeight.bold),
//                ),
//              ))
//        ]),
//      ),
//      body: SingleChildScrollView(
//        scrollDirection: Axis.vertical,
//        child: SizedBox(
//          height: height * 1.5,
//          child: Column(
//            children: <Widget>[
//              Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Column(
//                  children: <Widget>[
//                    Padding(
//                      padding: const EdgeInsets.only(
//                          top: 10.0, bottom: 10.0, left: 20.0),
//                      child: Row(
//                          mainAxisAlignment: MainAxisAlignment.start,
//                          children: <Widget>[
//                            Text(
//                              'Project Name',
//                              style: TextStyle(
//                                  fontWeight: FontWeight.bold, fontSize: 15.0),
//                            ),
//                            SizedBox(
//                              width: 20.0,
//                            ),
//                            Text(
//                              empdata['ProjectName'],
//                              style: TextStyle(fontSize: 15.0),
//                            ),
//                          ]),
//                    ),
//                    Padding(
//                      padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
//                      child: Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        children: <Widget>[
//                          Text(
//                            'Date',
//                            style: TextStyle(
//                                fontWeight: FontWeight.bold, fontSize: 15.0),
//                          ),
//                          SizedBox(
//                            width: 20.0,
//                          ),
//                          Text(
//                            formatDate(empdata['dates'][0]['date']) +
//                                ' - ' +
//                                formatDate(empdata['dates'][4]['date']),
//                            style: TextStyle(fontSize: 15.0),
//                          ),
//                        ],
//                      ),
//                    ),
//                    Container(
////                    width: 270.0,
//                      height: 50.0,
//                      child: Card(
//                        child: Padding(
//                          padding: const EdgeInsets.only(
//                              top: 8.0, bottom: 8.0, left: 20.0),
//                          child: Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              children: <Widget>[
//                                Container(
//                                    width: 20.0,
//                                    height: 20.0,
//                                    color: Colors.blue),
//                                SizedBox(
//                                  width: 10.0,
//                                ),
//                                Text(
//                                  'Total Submitted Hours : ',
//                                  style: TextStyle(
//                                      fontWeight: FontWeight.bold,
//                                      fontSize: 15.0),
//                                ),
//                                SizedBox(
//                                  width: 10.0,
//                                ),
//                                Container(
//                                  child: Text(
//                                    '40:00',
//                                    style: TextStyle(
//                                      fontSize: 15.0,
//                                      color: Colors.white,
////                                        backgroundColor: Colors.blue
//                                    ),
//                                  ),
//                                ),
//                              ]),
//                        ),
//                      ),
//                    ),
//                    Container(
////                    width: 270.0,
//                      height: 50.0,
//                      child: Card(
//                        child: Padding(
//                          padding: const EdgeInsets.only(
//                              top: 8.0, bottom: 8.0, left: 20.0),
//                          child: Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              children: <Widget>[
//                                Container(
//                                    width: 20.0,
//                                    height: 20.0,
//                                    color: Colors.green),
//                                SizedBox(
//                                  width: 10.0,
//                                ),
//                                Text(
//                                  'Total Approved Hours : ',
//                                  style: TextStyle(
//                                      fontWeight: FontWeight.bold,
//                                      fontSize: 15.0),
//                                ),
//                                SizedBox(
//                                  width: 10.0,
//                                ),
//                                Container(
//                                  width: 40.0,
//                                  child: Text(
//                                    '0:00',
//                                    style: TextStyle(
//                                        fontSize: 15.0,
//                                        color: Colors.white,
//                                        backgroundColor: Colors.green),
//                                  ),
//                                ),
//                              ]),
//                        ),
//                      ),
//                    ),
//                    Container(
////                    width: 270.0,
//                      height: 50.0,
//                      child: Card(
//                        child: Padding(
//                          padding: const EdgeInsets.only(
//                              top: 8.0, bottom: 8.0, left: 20.0),
//                          child: Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              children: <Widget>[
//                                Container(
//                                    width: 20.0,
//                                    height: 20.0,
//                                    color: Colors.red),
//                                SizedBox(
//                                  width: 10.0,
//                                ),
//                                Text(
//                                  'Total Denied Hours : ',
//                                  style: TextStyle(
//                                      fontWeight: FontWeight.bold,
//                                      fontSize: 15.0),
//                                ),
//                                SizedBox(
//                                  width: 10.0,
//                                ),
//                                Container(
//                                  width: 40.0,
//                                  child: Text(
//                                    '0:00',
//                                    style: TextStyle(
//                                        fontSize: 15.0,
//                                        color: Colors.white,
//                                        backgroundColor: Colors.red),
//                                  ),
//                                ),
//                              ]),
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Expanded(
//                child: SingleChildScrollView(
//                    scrollDirection: Axis.horizontal,
//                    child: SizedBox(
//                      width: width * 1.0,
//                      child: ListView.builder(
//                          shrinkWrap: true,
//                          scrollDirection: Axis.horizontal,
//                          itemCount: empdata['dates'] == null
//                              ? 0
//                              : empdata['dates'].length + 1,
//                          itemBuilder: (BuildContext context, int index) {
//                            if (index == 0) {
//                              return Card(
//                                child: Container(
//                                  color: Colors.grey.withOpacity(.5),
//                                  padding: EdgeInsets.only(
//                                      top: 10.0, right: 10.0, left: 10.0),
//                                  child: new Column(
//                                    crossAxisAlignment:
//                                    CrossAxisAlignment.start,
//                                    children: <Widget>[
//                                      Expanded(
//                                        child: Text("Task",
//                                            style: TextStyle(
//                                                fontSize: 21.0,
//                                                fontWeight: FontWeight.bold)),
//                                      ),
//                                      taskmethod("Requirement\nAnalysis"),
//                                      taskmethod("Form Design"),
//                                      taskmethod("Construction\n(Dev/Fix)"),
//                                      taskmethod("Project\nCoordination"),
//                                      taskmethod("Testing\n(UT/DIT/SIT)"),
//                                      taskmethod("Impl. &\nSupport"),
//                                      taskmethod("Meeting"),
//                                      taskmethod("Learning\n& Sharing"),
//                                      Expanded(
//                                        child: Text("Total Hrs",
//                                            style: TextStyle(
//                                              fontSize: 15.2,
//                                              fontWeight: FontWeight.bold,
//                                            )),
//                                      ),
//                                      Expanded(
//                                        child: CircleAvatar(
//                                          backgroundColor: Colors.transparent,
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                              );
//                            }
//                            index -= 1;
//                            var user = empdata['dates'][index];
//                            return Container(
//                              width: 49.0,
//                              child: Card(
//                                  child: Container(
//                                    padding: EdgeInsets.only(
//                                      top: 10.0,
//                                    ),
//                                    child: Column(
//                                      children: <Widget>[
//                                        Expanded(
//                                          child: Text(
//                                            FormatDate(user['date']),
//                                            style: TextStyle(
//                                              fontWeight: FontWeight.bold,
//                                              color: Colors.green,
//                                              fontSize: 21.0,
//                                            ),
//                                          ),
//                                        ),
//                                        methoddata(empdata, 'dates', index, 'h1'),
//                                        methoddata(empdata, 'dates', index, 'h2'),
//                                        methoddata(empdata, 'dates', index, 'h3'),
//                                        methoddata(empdata, 'dates', index, 'h4'),
//                                        methoddata(empdata, 'dates', index, 'h5'),
//                                        methoddata(empdata, 'dates', index, 'h6'),
//                                        methoddata(empdata, 'dates', index, 'h7'),
//                                        methoddata(empdata, 'dates', index, 'h8'),
//                                        Expanded(
//                                          child: new Text(
//                                            user['total'].toString() ?? '',
//                                            style: TextStyle(
//                                                fontWeight: FontWeight.bold,
//                                                fontSize: 15.0),
//                                          ),
//                                        ),
//                                        Checkbox(
//                                            value: user['is_active'],
//                                            onChanged: (bool value) {
//                                              setState(() {
//                                                user['is_active'] = value;
//                                              });
//                                            }),
//                                      ],
//                                    ),
//                                  )),
//                            );
//                            return Container();
//                          }),
//                    )),
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                mainAxisSize: MainAxisSize.min,
//                children: <Widget>[
//                  Padding(
//                    padding: const EdgeInsets.all(20.0),
//                    child: OutlineButton(
//                        child: Text('Approve'),
//                        splashColor: Colors.green,
//                        borderSide: BorderSide(
//                          color: Colors.green,
//                          style: BorderStyle.solid,
//                          width: 0.8,
//                        ),
//                        onPressed: () async {
//                          if (await _confirmApprove(context) == true) {}
//                        }),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(20.0),
//                    child: OutlineButton(
//                        child: Text('Deny '),
//                        color: Colors.red,
//                        splashColor: Colors.red,
//                        borderSide: BorderSide(
//                          color: Colors.red,
//                          style: BorderStyle.solid,
//                          width: 0.8,
//                        ),
//                        onPressed: () async {
//                          await _confirmDeny(context);
//                        }),
//                  )
//                ],
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//
//  Expanded taskmethod(title) {
//    return Expanded(
//      child: Text(title,
//          style: TextStyle(
//            fontSize: 15.2,
//          )),
//    );
//  }
//
//  Expanded methoddata(empdata, dates, index, i) {
//    return empdata[dates][index][i] != null
//        ? Expanded(
//        child: Text(empdata[dates][index][i].toString(),
//            style: TextStyle(
//                color: Colors.blue,
//                fontSize:
//                15.0 //                                      color: Colors.green,
//            )))
//        : Expanded(
//        child: Text(
//          '0',
//          style: TextStyle(
//              color: Colors.black,
//              fontSize:
//              15.0 //                                      color: Colors.green,
//          ),
//        ));
//  }
//
//  TextEditingController _controller = TextEditingController();
//  //Dialog box
//  _confirmDeny(BuildContext context) async {
//    return showDialog(
//        context: (context),
//        barrierDismissible: false,
//        builder: (context) => AlertDialog(
//          title: Text("Confirmation"),
//          content: Container(
//            height: 100,
//            child: Column(
//              children: <Widget>[
//                Text(
//                    "Are you sure you want to deny? and if 'Yes' give reason"),
//                TextField(
//                  autofocus: true,
//                  decoration:
//                  new InputDecoration(hintText: 'Give Reason...'),
//                  controller: _controller,
//                  maxLines: 1,
//                ),
//              ],
//            ),
//          ),
//          actions: <Widget>[
//            FlatButton(
//              child: Text("No",
//                  style: TextStyle(
//                      fontWeight: FontWeight.normal, color: Colors.black)),
//              onPressed: () => Navigator.pop(context),
//            ),
//            FlatButton(
//              child: Text("Yes",
//                  style: TextStyle(
//                      fontWeight: FontWeight.bold, color: Colors.black)),
//              onPressed: () => {
//                textColor = Colors.red,
//                setState(() {}),
//                Navigator.of(context).pop(_controller.text.toString())
//              },
//            )
//          ],
//          elevation: 24.0,
//        ));
//  }
//
//  Future<bool> _confirmApprove(BuildContext context) async {
//    return await showDialog(
//        context: (context),
//        barrierDismissible: false,
//        builder: (context) => AlertDialog(
//          title: Text("Confirmation"),
//          content: Text("Are you sure you want to Approve? "),
//          actions: <Widget>[
//            FlatButton(
//              child: Text("No", style: TextStyle(color: Colors.black)),
//              onPressed: () => Navigator.pop(context, false),
//            ),
//            FlatButton(
//              child: Text("Yes",
//                  style: TextStyle(
//                      fontWeight: FontWeight.bold, color: Colors.black)),
//              onPressed: () => Navigator.pop(context, true),
//            )
//          ],
//          elevation: 24.0,
//        ));
//  }
//}
