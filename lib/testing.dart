import 'package:flutter/material.dart';


class Testing11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Table-like Layout')),
        body: MyTableDataContainer2(),
      ),
    );
  }
}

class MyTableDataContainer2 extends StatelessWidget {
  final List<List<Map<String, String>>> data = [
    [
      {
        'no': '1',
        'dueAt': 'Due At 1',
        'descr': 'Description1',
        'status': 'Status1',
        'action': 'Action1',
        'tech': 'Tech1',
        'qci': 'QCI1',
      },
      {
        'no': '2',
        'dueAt': 'Due At 2',
        'descr': 'Description2',
        'status': 'Status2',
        'action': 'Action2',
        'tech': 'Tech2',
        'qci': 'QCI2',
      },
    ],
    [
      {
        'no': '3',
        'dueAt': 'Due At 3',
        'descr': 'Description3',
        'status': 'Status3',
        'action': 'Action3',
        'tech': 'Tech3',
        'qci': 'QCI3',
      },
    ],
    [
      {
        'no': '4',
        'dueAt': 'Due At 4',
        'descr': 'Description4',
        'status': 'Status4',
        'action': 'Action4',
        'tech': 'Tech4',
        'qci': 'QCI4',
      },
      {
        'no': '5',
        'dueAt': 'Due At 5',
        'descr': 'Description5',
        'status': 'Status5',
        'action': 'Action5',
        'tech': 'Tech5',
        'qci': 'QCI5',
      },
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: data.map((dataList) {
            bool showColumnNames = true;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: dataList.map((item) {
                if (showColumnNames) {
                  showColumnNames = false;
                  return MyColumnNames();
                }
                return MyDataItem(
                  no: item['no'],
                  dueAt: item['dueAt'],
                  descr: item['descr'],
                );
              }).toList(),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class MyColumnNames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 3),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
            child: Center(
              child: Text(
                'No',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
            ),
          ),
        ),
        SizedBox(width: 5),
        Container(
          width: 100,
          child: Text(
            "Auth",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ),
        SizedBox(width: 5),
        Container(
          width: 200,
          child: Text(
            "Description",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ),
        SizedBox(width: 5),
        Container(
          width: 100,
          child: Text(
            "Status",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ),
        SizedBox(width: 5),
        Container(
          width: 100,
          child: Text(
            "Action",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ),
        SizedBox(width: 5),
        Container(
          width: 100,
          child: Text(
            "Technician",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ),
        SizedBox(width: 5),
        Container(
          width: 100,
          child: Text(
            "QCI",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ),
      ],
    );
  }
}

class MyDataItem extends StatelessWidget {
  final String? no;
  final String? dueAt;
  final String? descr;

  MyDataItem({this.no, this.dueAt, this.descr});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.black),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 3),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text(
                      '${no}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 100,
                child: Text(
                  "Auth",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 200,
                child: Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 100,
                child: Text(
                  "Status",
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 100,
                child: Text(
                  "Action",
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 100,
                child: Text(
                  "Technician",
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 100,
                child: Text(
                  "QCI",
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
              ),
              SizedBox(width: 5),
              Container(
                width: 100,
                child: Text(
                  "Authentication",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 3),
                    Text(
                      "${descr.toString()}",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              SizedBox(width: 5),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              SizedBox(width: 5),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              SizedBox(width: 5),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
