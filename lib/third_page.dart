import 'package:firstapp/first_page.dart';
import 'package:firstapp/fourth_page.dart';
import 'package:firstapp/second_page.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 63.0, 24.0, 0.0),
          child: Column(
            children: <Widget>[
              const Row(
                children: <Widget>[
                  SizedBox(
                    width: 43,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('Assets/download.png'),
                      radius: 33.0,
                    ),
                  ),
                  SizedBox(width: 90),
                  Text(
                    'Reports',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Rublik',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE082),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Money In',
                            style: TextStyle(
                              fontFamily: 'Rublik',
                              fontSize: 14.0,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Row(
                            children: [
                              const Text(
                                '+ \$3,456.98',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Rublik',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.trending_up,
                                color: Colors.purple.shade400,
                                size: 18.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(182, 224, 243, 1),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Money Out',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Rublik',
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Row(
                            children: [
                              const Text(
                                '- \$567.25',
                                style: TextStyle(
                                  fontFamily: 'Rublik',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.trending_up,
                                color: Colors.purple.shade400,
                                size: 18.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 0.4),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Monthly Spending',
                      style: TextStyle(
                        fontFamily: 'Rublik',
                        fontSize: 14.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 300,
                      child: BarChart(
                        BarChartData(
                          alignment: BarChartAlignment.spaceAround,
                          borderData: FlBorderData(show: true),
                          titlesData: FlTitlesData(
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                reservedSize: 40,
                                interval: 100,
                                getTitlesWidget: (value, meta) {
                                  return Text(
                                    '${value.toInt()}',
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  );
                                },
                              ),
                            ),
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                reservedSize: 40,
                                getTitlesWidget: (value, meta) {
                                  const months = ['JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN'];
                                  return Text(
                                    months[value.toInt()],
                                    style: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          barGroups: [
                            BarChartGroupData(
                              x: 0,
                              barRods: [
                                BarChartRodData(
                                  toY: 350,
                                  color: const Color(0xFF133FDB),
                                  width: 15,
                                  borderRadius: BorderRadius.zero,
                                ),
                              ],
                            ),
                            BarChartGroupData(
                              x: 1,
                              barRods: [
                                BarChartRodData(
                                  toY: 500,
                                  color: const Color(0xFF133FDB),
                                  width: 15,
                                  borderRadius: BorderRadius.zero,
                                ),
                              ],
                            ),
                            BarChartGroupData(
                              x: 2,
                              barRods: [
                                BarChartRodData(
                                  toY: 250,
                                  color: const Color(0xFF133FDB),
                                  width: 15,
                                  borderRadius: BorderRadius.zero,
                                ),
                              ],
                            ),
                            BarChartGroupData(
                              x: 3,
                              barRods: [
                                BarChartRodData(
                                  toY: 300,
                                  color: const Color(0xFF133FDB),
                                  width: 15,
                                  borderRadius: BorderRadius.zero,
                                ),
                              ],
                            ),
                            BarChartGroupData(
                              x: 4,
                              barRods: [
                                BarChartRodData(
                                  toY: 550,
                                  color: const Color(0xFF133FDB),
                                  width: 15,
                                  borderRadius: BorderRadius.zero,
                                ),
                              ],
                            ),
                            // Make sure to remove the duplicate x: 0 entry if not needed
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: 327,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(209, 236, 247, 1),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'In Budget',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Rubik',
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Shopping',
                                style: TextStyle(
                                  color: Color.fromRGBO(133, 133, 133, 1),
                                  fontFamily: 'Rubik',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '\$50.00/ \$100.00',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Rubik',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: 327,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(250, 226, 238, 1),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Out of Budget',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Rubik',
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Subscriptions',
                                style: TextStyle(
                                  color: Color.fromRGBO(133, 133, 133, 1),
                                  fontFamily: 'Rubik',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '\$50.00/ \$100.00',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Rubik',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
