import 'package:flutter/material.dart';

class ProductionBar extends StatelessWidget {
  const ProductionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Production bar'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: DataTable(
            columns: [
              DataColumn(label: Text('Pic')),
              DataColumn(label: Text('Stock')),
              DataColumn(label: Text('Buy P')),
              DataColumn(label: Text('Sell')),
              DataColumn(label: Text('Margin')),
              DataColumn(label: Text('Action')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('John')),
                DataCell(Text('30')),
                DataCell(Text('30')),
                DataCell(Text('30')),
                DataCell(Text('Action')),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Doe')),
                DataCell(Text('25')),
                DataCell(Text('30')),
                DataCell(Text('30')),
                DataCell(Text('Action')),
              ]),
              DataRow(cells: [
                DataCell(Text('3')),
                DataCell(Text('Jane')),
                DataCell(Text('28')),
                DataCell(Text('30')),
                DataCell(Text('30')),
                DataCell(Text('Action')),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
