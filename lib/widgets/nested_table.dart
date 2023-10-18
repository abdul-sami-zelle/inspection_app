import 'package:flutter/material.dart';
import 'package:sign_up_page_2/widgets/table_text.dart';

class NestedTable extends StatelessWidget {
  const NestedTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              
              border: TableBorder.all(
                style: BorderStyle.solid,
                width: 1,
                color: Colors.black,
        
              ),
                // Datatable widget that have the property columns and rows.
                columns:  [
                  
                 
                  // Set the name of the column
                  DataColumn(
                    label: Expanded(
                      flex: 1,
                      child: TableText(text: 'Ser')),
                  ),
                  DataColumn(
                    label: Expanded(
                      flex: 2,
                      child: TableText(text: 'Auth')),
                  ),
                  
                  DataColumn(
                    
                    label: Expanded(
                      flex: 4,
                      child: DataTable(columns: [

                      ], rows: [
                        
                      ])),
                  ),
                 
                ],
                rows:  [
                  
                
                  
                   DataRow(cells: [
                     DataCell(TableText(text: '1')),
                    DataCell(TableText(text: 'ALEX bhatti')),
                    DataCell(DataTable(columns:[
                      DataColumn(label: TableText(text: 'tech'),
                      ),
                      DataColumn(label: TableText(text: 'qci'),
                      )
                    ], rows: [
                      DataRow(cells:[
                        DataCell(TableText(text: 'Arsalan Khan')),
                      DataCell(Checkbox(value: true, onChanged: null))
                      ] )
                    ])),
                  ]),
                   
                   
                ]),
          ),
        ),
      ),
    );
  }
}
