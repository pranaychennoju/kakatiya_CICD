import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Image.asset(
                'assets/Kakatiya.jpg',
              )),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

//   Padding(
      //     padding: const EdgeInsets.only(left: 10, right: 0),
      //     child: Container(
      //       child: 
      //       SingleChildScrollView(
      //         child: 
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           crossAxisAlignment: CrossAxisAlignment.start,
                
      //           children: [
      //             const Text('Device status table', style: TextStyle(fontSize: 20, fontWeight:  FontWeight.w500),),
      //             SingleChildScrollView(
      //               scrollDirection: Axis.horizontal,
      //               child: DataTable(
      //                  border: TableBorder.all(
      //                 width: 1.0,
      //                 color:Colors.black,
      //       ),
      //                 headingRowColor: MaterialStateColor.resolveWith((states) => Colors.blue),
      //                 columns: <DataColumn>[
            
            
      //                   const DataColumn(label: Text('Loc ID.', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),), ),
      //                   const DataColumn(label: Text('CCMS No.', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),), ),
      //                   const DataColumn(label: Text('Phase', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),), ),
      //                   const DataColumn(label: Text('ULB', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),), ),
      //                   // Add more DataColumn widgets as needed
      //                 ],
      //                 rows: <DataRow>[
      //                   DataRow(
      //                     cells: <DataCell>[
      //                       const DataCell(Text('Row 1 Data 1')),
      //                       DataCell(Text('25423511265455551', style: TextStyle(fontWeight: FontWeight.bold, color:  Colors.blue[900]),)),
      //                       const DataCell(Text('Row 1 Data 3')),
      //                       const DataCell(Text('Row 1 Data 4')),
      //                       // Add more DataCell widgets as needed
      //                     ],
      //                   ),
      //                   DataRow(
      //                     cells: <DataCell>[
      //                       const DataCell(Text('Row 2 Data 1')),
      //      DataCell(Text('25423511265455551', style: TextStyle(fontWeight: FontWeight.w900, color: Colors.blue[900]),)),                        const DataCell(Text('Row 2 Data 3')),
      //                       const DataCell(Text('Row 2 Data 4')),
      //                       // Add more DataCell widgets as needed
      //                     ],
      //                   ),
      //                    DataRow(
      //                     cells: <DataCell>[
      //                       const DataCell(Text('Row 2 Data 1')),
      //      DataCell(Text('25423511265455551', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[900]),)),                        const DataCell(Text('Row 2 Data 3')),
      //                       const DataCell(Text('Row 2 Data 4')),
      //                       // Add more DataCell widgets as needed
      //                     ],
      //                   ),
      //                   // Add more DataRow widgets as needed
      //                 ],
      //               ),
      //             ),
      //             const SizedBox(height: 20),
      //              const Text('CCMS ', style: TextStyle(fontSize: 20, fontWeight:  FontWeight.w500),),
      //             Center(
      //       child: AspectRatio(
      //         aspectRatio: 1.2,
      //         child: PieChart(
      //           PieChartData(
      //             centerSpaceRadius: 0,
      //             sections: [
      //               PieChartSectionData(
      //                 color: Colors.blue,
      //                 value: 30, // Replace with your data value
      //                 title: 'Slice 1',
      //                 radius: 100,
      //               ),
      //               PieChartSectionData(
      //                 color: Colors.green,
      //                 value: 20, // Replace with your data value
      //                 title: 'Slice 2',
      //                 radius: 100,
      //               ),
      //               PieChartSectionData(
      //                 color: Colors.red,
      //                 value: 50, // Replace with your data value
      //                 title: 'Slice 3',
      //                 radius: 100,
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //           ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // );