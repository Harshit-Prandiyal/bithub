import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './main.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Table'),
        backgroundColor: Color.fromARGB(255, 121, 126, 234),
      ),
      body: Container(
        color: Colors.black,
        child: InteractiveViewer(
            boundaryMargin: const EdgeInsets.all(3.0),
            child: Center(child: Image.asset('assets/images/timtable.png'))),
      ),
    );
  }
}








// SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Container(
//         color: Colors.blue[50],
//         child: DataTable(
//           columns: const <DataColumn>[
//             DataColumn(
//               label: Expanded(
//                 child: Text(
//                   'Days',
//                   style: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//             ),
//             DataColumn(
//               label: Expanded(
//                 child: Text(
//                   '8:00-8:50',
//                   style: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//             ),
//             DataColumn(
//               label: Expanded(
//                 child: Text(
//                   '9:00-9:50',
//                   style: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//             ),
//             DataColumn(
//               label: Expanded(
//                 child: Text(
//                   '10:00-10:50',
//                   style: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//             ),
//             DataColumn(
//               label: Expanded(
//                 child: Text(
//                   '11:00-11:50',
//                   style: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//             ),
//             DataColumn(
//               label: Expanded(
//                 child: Text(
//                   '12:00-12:50',
//                   style: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//             ),
//             DataColumn(
//               label: Expanded(
//                 child: Text(
//                   '1:30-2:20',
//                   style: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//             ),
//             DataColumn(
//               label: Expanded(
//                 child: Text(
//                   '2:30-3:20',
//                   style: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//             ),
//             DataColumn(
//               label: Expanded(
//                 child: Text(
//                   '3:30-4:20',
//                   style: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//             ),
//             DataColumn(
//               label: Expanded(
//                 child: Text(
//                   '4:30-5:20',
//                   style: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//             ),
//           ],
//           rows: const <DataRow>[
//             DataRow(
//               cells: <DataCell>[
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Student')),
//               ],
//             ),
//             DataRow(
//               cells: <DataCell>[
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Student')),
//               ],
//             ),
//             DataRow(
//               cells: <DataCell>[
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Student')),
//               ],
//             ),
//             DataRow(
//               cells: <DataCell>[
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Student')),
//               ],
//             ),
//             DataRow(
//               cells: <DataCell>[
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Student')),
//               ],
//             ),
//             DataRow(
//               cells: <DataCell>[
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Sarah')),
//                 DataCell(Text('19')),
//                 DataCell(Text('Student')),
//                 DataCell(Text('Student')),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );