import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:kakatiya/appdrawer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool _showAll = false;
  bool isdark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kakatiya'),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  setState(() {});
                },
                icon: isdark
                    ? const Icon(
                        Icons.light_mode,
                      )
                    : const Icon(
                        Icons.dark_mode,
                      )),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
            const CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'), radius: 15),
          ],
        ),
        drawer: AppDrawer(),
        body: Container(
          color: const Color(0xffF2F2F5),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'CCMS Reporting Status',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 30),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Installed LED Lamps',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black54),
                              ),
                              Text('100',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Connected LED Lams',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700)),
                              Row(
                                children: [
                                  Text('0 ',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  Text('(0.00%)',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54))
                                ],
                              )
                            ],
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 30),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Connected CCMS',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text('3',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('CCMS On',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700)),
                              Row(
                                children: [
                                  Text('0 ',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  Text('(0.00%)',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54))
                                ],
                              )
                            ],
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 30),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'LED Lamps On',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text('0',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('LED Lamps Off',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700)),
                              Row(
                                children: [
                                  Text('0 ',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  Text('(0.00%)',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54))
                                ],
                              )
                            ],
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 30),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Connected Load',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text('0 kW',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Active Load',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700)),
                              Row(
                                children: [
                                  Text('0 kW ',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  Text('(0.00%)',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54))
                                ],
                              )
                            ],
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 30),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Installed LED Lamps',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text('100',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Connected LED Lams',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w700)),
                              Row(
                                children: [
                                  Text('0 ',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  Text('(0.00%)',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54))
                                ],
                              )
                            ],
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 30),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Installed LED Lamps',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text('100',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Connected LED Lams',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700)),
                              Row(
                                children: [
                                  Text('0 ',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  Text('(0.00%)',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54))
                                ],
                              )
                            ],
                          )
                        ],
                      )),
                  //  const SizedBox(height: 10,),

                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: MediaQuery.sizeOf(context).width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'CCMS Status',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        _showAll
                            ?
//=========================================================ALL LIST =====================================================================================================
                            Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.lightbulb,
                                            size: 40,
                                            color: Colors.blue,
                                          ),
                                          // Text('Auto-ON', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                                          TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'Auto-ON',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ))
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('1'),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text('0')
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.lightbulb,
                                            size: 40,
                                            color: Colors.red,
                                          ),
                                          // Text('Auto-ON', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                                          Row(
                                            children: [
                                              TextButton(
                                                  onPressed: () {},
                                                  child: const Text(
                                                    'Manual Bypass',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                            ],
                                          )
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('0'),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text('0')
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.lightbulb,
                                            size: 40,
                                            color: Colors.yellow,
                                          ),
                                          // Text('Auto-ON', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                                          TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'Line Short',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ))
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('0'),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text('0')
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.lightbulb,
                                            size: 40,
                                            color: Colors.green,
                                          ),
                                          // Text('Auto-ON', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                                          TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'Auto-OFF',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ))
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('3'),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text('0')
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.lightbulb,
                                            size: 40,
                                            color: Colors.grey,
                                          ),
                                          TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'Input Power Failure',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ))
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('0'),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text('0')
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.lightbulb,
                                            size: 40,
                                            color: Colors.red,
                                          ),
                                          // Text('Auto-ON', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                                          TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'MCB Trip',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ))
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('0'),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text('0')
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.lightbulb,
                                            size: 40,
                                            color: Colors.black54,
                                          ),
                                          // Text('Auto-ON', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                                          TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'Loose  Contact',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ))
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('0'),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text('0')
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.lightbulb,
                                            size: 40,
                                            color: Colors.orange,
                                          ),
                                          // Text('Auto-ON', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                                          TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'High Voltage Trip',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ))
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('0'),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text('0')
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.lightbulb,
                                            size: 40,
                                            color:
                                                Colors.orange.withOpacity(0.5),
                                          ),
                                          // Text('Auto-ON', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                                          TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'Low Voltage Trip',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ))
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('0'),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text('0')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              )
                            :
// =========================================================show less==========================================================================================
                            Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.lightbulb,
                                            size: 40,
                                            color: Colors.blue,
                                          ),
                                          // Text('Auto-ON', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                                          TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'Auto-ON',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ))
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('13'),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text('0')
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.lightbulb,
                                            size: 40,
                                            color: Colors.red,
                                          ),
                                          // Text('Auto-ON', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                                          Row(
                                            children: [
                                              TextButton(
                                                  onPressed: () {},
                                                  child: const Text(
                                                    'Manual Bypass',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                            ],
                                          )
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('0'),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text('0')
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.lightbulb,
                                            size: 40,
                                            color: Colors.yellow,
                                          ),
                                          // Text('Auto-ON', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                                          TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'Line Short',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ))
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text('0'),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text('0')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showAll = !_showAll;
                                    });
                                  },
                                  child:
                                      Text(_showAll ? 'Hide All' : 'See All'),
                                ),
                                Icon(_showAll
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_right)
                              ],
                            )
                            // TextButton(onPressed: (){}, child: Row(children: [
                            //   Row(
                            //     children: [
                            //       Text('Sell all'),
                            //       Icon(Icons.arrow_drop_down)
                            //     ],
                            //   )
                            // ],))
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    width: MediaQuery.sizeOf(context).width,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "CCMS Staus in Pie Chart",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Center(
                          child: AspectRatio(
                            aspectRatio: 1.2,
                            child: PieChart(
                              PieChartData(
                                centerSpaceRadius: 0,
                                sections: [
                                  PieChartSectionData(
                                      color: Colors.blue,
                                      value: 1, // Replace with your data value
                                      title: 'Auto-ON',
                                      radius: 100,
                                      titleStyle:
                                          TextStyle(color: Colors.black54)),
                                  PieChartSectionData(
                                    color: Colors.red,
                                    value: 0, // Replace with your data value
                                    title: 'Slice 2',
                                    radius: 100,
                                  ),
                                  PieChartSectionData(
                                      color: Colors.green,
                                      value: 5, // Replace with your data value
                                      title: 'Auto - OFF',
                                      radius: 100,
                                      titleStyle:
                                          TextStyle(color: Colors.black54)),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    width: MediaQuery.sizeOf(context).width,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Device status table",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(
                            border: TableBorder.all(
                              width: 1.0,
                              color: Colors.black,
                            ),
                            headingRowColor: MaterialStateColor.resolveWith(
                                (states) => Colors.blue),
                            columns: const <DataColumn>[
                              DataColumn(
                                label: Text(
                                  'Loc ID.',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'CCMS No.',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Phase',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'ULB',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              // Add more DataColumn widgets as needed
                            ],
                            rows: <DataRow>[
                              DataRow(
                                cells: <DataCell>[
                                  const DataCell(Text('Row 1 Data 1')),
                                  DataCell(Text(
                                    '25423511265455551',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue[900]),
                                  )),
                                  const DataCell(Text('Row 1 Data 3')),
                                  const DataCell(Text('Row 1 Data 4')),
                                  // Add more DataCell widgets as needed
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  const DataCell(Text('Row 2 Data 1')),
                                  DataCell(Text(
                                    '25423511265455551',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue[900]),
                                  )),
                                  const DataCell(Text('Row 2 Data 3')),
                                  const DataCell(Text('Row 2 Data 4')),
                                  // Add more DataCell widgets as needed
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  const DataCell(Text('Row 2 Data 1')),
                                  DataCell(Text(
                                    '25423511265455551',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue[900]),
                                  )),
                                  const DataCell(Text('Row 2 Data 3')),
                                  const DataCell(Text('Row 2 Data 4')),
                                  // Add more DataCell widgets as needed
                                ],
                              ),
                              // Add more DataRow widgets as needed
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class Ccms {
  final Icon icon;
  final TextButton textButton;
  final int ccms;
  final int lamps;
  Ccms(this.icon, this.textButton, this.ccms, this.lamps);
}

//==========================================================================================
