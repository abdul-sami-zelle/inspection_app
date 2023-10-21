import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_page_2/multi.dart';
import 'package:sign_up_page_2/statemaneger/Provider.dart';
import 'package:sign_up_page_2/testing3.dart';
import 'package:sign_up_page_2/widgets/dataFormat.dart';
import 'package:sign_up_page_2/widgets/tableDataDesign2.dart';


class Testing11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context);
    return Scaffold(
        appBar: AppBar(title: Text('Table-like Layout')),
        body: 
        //  SingleChildScrollView(
        //                   child: Column(
        //                     children: [
        //                       TableDataContainer2(no: '1', dueAt: '300hrs/6Months', descr: '',),
        //                       TableDataContainer2(no: '2', dueAt: '200hrs/6Months', descr: '',),
        //                       TableDataContainer2(no: '3', dueAt: '00hrs/6Months', descr: '',),
        //                       TableDataContainer2(no: '4', dueAt: '3500hrs/6Months', descr: '',)
        //                     ],
        //                   ),
        //                 ),
        FutureBuilder(
            future: Provider11.fetchData(),
            initialData: "Code sample",
            builder: (BuildContext context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.deepPurpleAccent,
                  ),
                );
              }
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'An ${snapshot.error} occurred',
                      style: const TextStyle(fontSize: 18, color: Colors.red),
                    ),
                  );
                } else if (snapshot.hasData) {
                  final data = snapshot.data;

                  return  ListView.builder(
                    itemCount: Provider11.data1.length,
                    itemBuilder: (context,index){
                      return DataFormat111(
                        ser:Provider11.data1[index].ser, 
                        auth: Provider11.data1[index].auth, 
                        actionTaken: Provider11.data1[index].action, 
                        description: Provider11.data1[index].descr, 
                        dueAt: Provider11.data1[index].dueAt, 
                        qci: Provider11.data1[index].qci, 
                        status: Provider11.data1[index].status, 
                        tech: Provider11.data1[index].tech
                        );
                    });
              







                          
                }
              }

              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        
    
    );
  }
}


class UserInformation extends StatefulWidget {
  @override
    _UserInformationState createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('table_data').snapshots();

  @override
  Widget build(BuildContext context) {
    List<DataFormat11> dataMulti = [];
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
         
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
          Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
          
            return Container(
              child: data['Data']!=null?  MultiLines()
                 
    //             Padding(
    //   padding: EdgeInsets.only(bottom: 10.h),
    //   child: Container(
    //     width: double.infinity,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(8),
    //     ),
    //     child: SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: Container(
    //         decoration: BoxDecoration(
    //           border: Border(
    //             bottom: BorderSide(width: 1, color: Colors.black)
    //           )
    //         ),
    //         child: Row(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Container(
    //                    decoration: BoxDecoration(
    //           border: Border(
    //             bottom: BorderSide(width: 1, color: Colors.black)
    //           )
    //         ),
    //                   child: Row(
                        
    //                     children: [
    //                       Padding(
    //                         padding:EdgeInsets.only(bottom: 3.h),
    //                         child: Container(
    //                           height: 30,
    //                           width: 30,
    //                           decoration: BoxDecoration(
    //                               shape: BoxShape.circle, color: Colors.grey),
    //                           child: Center(
    //                             child: Multi(
    //                                 color: Colors.black,
    //                                 subtitle: '{no}',
    //                                 weight: FontWeight.bold,
    //                                 size: 13),
    //                           ),
    //                         ),
    //                       ),
    //                       SizedBox(width: 5.w,),
                        
    //                       Container(
    //                          width: 100.w,
    //                         child: Multi(
    //                             color: Colors.black,
    //                             subtitle: "Auth",
    //                             weight: FontWeight.bold,
    //                             size: 10),
    //                       ),
    //                       SizedBox(width: 5.w,),
    //                       Container(
    //                          width: 200.w,
    //                         child: Multi(
    //                             color: Colors.black,
    //                             subtitle: "Description",
    //                             weight: FontWeight.bold,
    //                             size: 10),
    //                       ),
    //                       SizedBox(width: 5.w,),
    //                       Container(
    //                         width: 100.w,
    //                         child: Multi(
    //                             color: Colors.grey,
    //                             subtitle: "Status",
    //                             weight: FontWeight.bold,
    //                             size: 10),
    //                       ),
    //                       SizedBox(width: 5.w,),
    //                       Container(
    //                         width: 100.w,
    //                         child: Multi(
    //                             color: Colors.grey,
    //                             subtitle: "Action",
    //                             weight: FontWeight.bold,
    //                             size: 10),
    //                       ),
    //                       SizedBox(width: 5.w,),
    //                       Container(
    //                           width: 100.w,
    //                         child: Multi(
    //                             color: Colors.grey,
    //                             subtitle: "Technician",
    //                             weight: FontWeight.bold,
    //                             size: 10),
    //                       ),
    //                       SizedBox(width: 5.w,),
    //                       Container(
    //                         width: 100.w,
    //                         child: Multi(
    //                             color: Colors.grey,
    //                             subtitle: "QCI",
    //                             weight: FontWeight.bold,
    //                             size: 10),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
             
                    
                     
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // )
                :TableDataContainer2(no: (1).toString(), dueAt: data['qci'], descr: data['tech'])
            );
          }).toList(),
        );
      },
    );
  }
}







class DataFormat11 {
  String? tech;
  String? qci;
  String? action;
  DataFormat11({required this.tech,required this.qci,required this.action});
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
