import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merge_table/merge_table.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_page_2/multi.dart';
import 'package:sign_up_page_2/statemaneger/Provider.dart';
import 'package:sign_up_page_2/widgets/popup.dart';
import 'package:sign_up_page_2/widgets/table_text.dart';
import 'package:data_table_2/data_table_2.dart';

class Table1 extends StatelessWidget {
  Table1({super.key});

  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context);

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: FutureBuilder(
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

                  return    Container(
                    width: 300.w,
                    
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: DataTable(
                                                      columnSpacing: 30,
                                                      headingRowHeight: 70,
                                                      columns: [
                                                        
                                                        DataColumn(
                                                        
                                                          label: Multi(color: Color(0xff8F95A2), subtitle: "Ser", weight: FontWeight.bold, size: 8)
                                                          ),
                                                        DataColumn(
                                                          label: Multi(color: Color(0xff8F95A2), subtitle: "Auth", weight: FontWeight.bold, size: 8)
                                                          ),
                                                        DataColumn(
                                                          label: Multi(color: Color(0xff8F95A2), subtitle: "Work description", weight: FontWeight.bold, size: 8)
                                                          ),
                                                          DataColumn(
                                                          label: Multi(color: Color(0xff8F95A2), subtitle: "Status", weight: FontWeight.bold, size: 8)
                                                          ),
                                                      
                                                          DataColumn(
                                                          label: Multi(color: Color(0xff8F95A2), subtitle: "Action Taken", weight: FontWeight.bold, size: 8)
                                                          ),
                                                          DataColumn(
                                                          label: Multi(color: Color(0xff8F95A2), subtitle: "Tech", weight: FontWeight.bold, size: 8)
                                                          ),
                                                          DataColumn(
                                                          label: Multi(color: Color(0xff8F95A2), subtitle: "QCI", weight: FontWeight.bold, size: 8)
                                                          ),
                                                            
                                                        
                                                      ], 
                                                     rows: Provider11.data1
                                .map((e) => DataRow(cells: [
                                      DataCell(GestureDetector(
                                          child: Multi(
                                              color: Color(0xff8F95A2),
                                              subtitle: e.ser.toString(),
                                              weight: FontWeight.normal,
                                              size: 8))),
                                      DataCell(Multi(
                                          color: Color(0xff8F95A2),
                                          subtitle: e.auth.toString(),
                                          weight: FontWeight.normal,
                                          size: 8)),
                                      DataCell(Multi(
                                          color: Color(0xff8F95A2),
                                          subtitle:" e.descr.toString() e.descr.toString(e.descr.toString( e.descr.toString( e.descr.toString( e.descr.toString( e.descr.toString(",
                                          weight: FontWeight.normal,
                                          size: 8)),
                                      DataCell(Multi(
                                          color: Color(0xff8F95A2),
                                          subtitle: e.status.toString(),
                                          weight: FontWeight.normal,
                                          size: 8)),
                                      DataCell(Multi(
                                          color: Color(0xff8F95A2),
                                          subtitle: e.action.toString(),
                                          weight: FontWeight.normal,
                                          size: 8)),
                                      DataCell(e.tech.toString() == ""
                                          ? ElevatedButton(
                                              onPressed: () {
                                                showDialog(
                                                  context: context,
                                                  builder: (BuildContext context) {
                                                    return TechName(
                                                      index: int.parse(
                                                              e.ser.toString()) -
                                                          1,
                                                    );
                                                  },
                                                );
                                              },
                                              child: Text("add"))
                                          : Multi(
                                              color: Color(0xff8F95A2),
                                              subtitle: e.tech.toString(),
                                              weight: FontWeight.normal,
                                              size: 8)),
                            DataCell(
                        
                         Multi(
                                          color: Color(0xff8F95A2),
                                          subtitle: e.action.toString(),
                                          weight: FontWeight.normal,
                                          size: 8)
                      
                                        ),
                                        
                                        
                                        
                                    ]))
                                .toList()
                                                      ),
                      ),
                    ),
                  );
                  
                   DataTable(
                    columnSpacing: 0,
                      border: TableBorder.all(
                        style: BorderStyle.solid,
                        width: 1,
                        color: Colors.black,
                      ),
                      // Datatable widget that have the property columns and rows.
                      columns: [
                        // Set the name of the column
                        DataColumn(
                          label:
                              Expanded(flex: 1, child: TableText(text: 'Ser')),
                        ),
                        DataColumn(
                          label:
                              Expanded(flex: 2, child: TableText(text: 'Auth')),
                        ),

                        DataColumn(
                          label: Expanded(
                              flex: 4,
                              child: TableText(text: 'Work description')),
                        ),
                        DataColumn(
                          label: Expanded(
                              flex: 2, child: TableText(text: 'Status')),
                        ),
                        DataColumn(
                          label: Expanded(
                              flex: 2, child: TableText(text: 'Action Taken')),
                        ),
                        DataColumn(
                          label:
                              Expanded(flex: 2, child: TableText(text: 'Tech')),
                        ),
                        DataColumn(
                          label:
                              Container(width: 100, child: TableText(text: 'QCI')),
                        ),
                      ],
                      rows: Provider11.data1
                          .map((e) => DataRow(cells: [
                                DataCell(GestureDetector(
                                    child: Multi(
                                        color: Color(0xff8F95A2),
                                        subtitle: e.ser.toString(),
                                        weight: FontWeight.normal,
                                        size: 8))),
                                DataCell(Multi(
                                    color: Color(0xff8F95A2),
                                    subtitle: e.auth.toString(),
                                    weight: FontWeight.normal,
                                    size: 8)),
                                DataCell(Multi(
                                    color: Color(0xff8F95A2),
                                    subtitle: e.descr.toString(),
                                    weight: FontWeight.normal,
                                    size: 8)),
                                DataCell(Multi(
                                    color: Color(0xff8F95A2),
                                    subtitle: e.status.toString(),
                                    weight: FontWeight.normal,
                                    size: 8)),
                                DataCell(Multi(
                                    color: Color(0xff8F95A2),
                                    subtitle: e.action.toString(),
                                    weight: FontWeight.normal,
                                    size: 8)),
                                DataCell(e.tech.toString() == ""
                                    ? ElevatedButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return TechName(
                                                index: int.parse(
                                                        e.ser.toString()) -
                                                    1,
                                              );
                                            },
                                          );
                                        },
                                        child: Text("add"))
                                    : Multi(
                                        color: Color(0xff8F95A2),
                                        subtitle: e.tech.toString(),
                                        weight: FontWeight.normal,
                                        size: 8)),
      DataCell(
   Container(
    width: 100,
    color: Colors.blue,
    child: Column(
      children: [
        Container(
          width:100,
          child: Text("1223"),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1,color: Colors.white30)
            )
          ),
        ),
         Container(
          width:100,
          child: Text("1223"),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1,color: Colors.white30)
            )
          ),
        ),
         Container(
          width:100,
          child: Text("1223"),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1,color: Colors.white30)
            )
          ),
        ),
         Container(
          width:100,
          child: Text("1223"),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1,color: Colors.white30)
            )
          ),
        ),
        
      ],
    ),
   ),
   
  onTap: () {
    // Your onTap action
    // For example, you can print e.qci.toString()
  },
),



                              ]))
                          .toList());









                          
                }
              }

              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    ));
  }
}
