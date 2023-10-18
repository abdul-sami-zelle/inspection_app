import 'package:flutter/material.dart';
import 'package:merge_table/merge_table.dart';



class Testing1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<List<String>> tableData = [
      ['Sub-Column 1', 'Sub-Column 2'],
      ['Row 1, Sub-Column 1', 'Row 1, Sub-Column 2'],
      ['Row 2, Sub-Column 1', 'Row 2, Sub-Column 2'],
      // Add more rows as needed
    ];

    return  Scaffold(
        appBar: AppBar(
          title: Text('Table Example'),
        ),
        body: Center(
          child: MergeTable(
  borderColor: Colors.black,
  alignment: MergeTableAlignment.center,
  columns: [
    MColumn(header: "Pump"),
    MColumn(header: "Product"),
    MColumn(header: "Seal"),
    MMergedColumns(
      header: "Reading",
      columns: ["Before", "Then", "After"],
    ),
    MColumn(header: "Write"),
  ],
  rows: [
    [
      MRow(const Text("1")),
      MRow(const Text("2")),
      MRow(const Text("3")),
      MMergedRows([
        const Text("4"),
        const Text("5"),
        const Text("8"),
      ]),
      MRow(const Text("6")),
    ],
    [
      MRow(const Text("1")),
      MRow(const Text("2")),
      MRow(const Text("3")),
      MMergedRows([
        const Text("4"),
        const Text("5"),
        const Text("8"),
      ]),
      MRow(const Text("6")),
    ],
  ],
)

        ),
      
    );
  }
}
