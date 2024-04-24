import 'package:flutter/material.dart';

class channelBar extends StatelessWidget {
  const channelBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Channel Bar'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: DataTable(
            columns: [
              DataColumn(label: Text('Product Name')),
              DataColumn(label: Text('Channel')),
              DataColumn(label: Text('Action')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('John')),
                DataCell(Text('30')),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Doe')),
                DataCell(Text('25')),
              ]),
              DataRow(cells: [
                DataCell(Text('3')),
                DataCell(Text('Jane')),
                DataCell(Text('28')),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
