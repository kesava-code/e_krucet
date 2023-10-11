import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    TextStyle titleStyle = Theme.of(context)
        .textTheme
        .titleMedium!
        .copyWith(fontWeight: FontWeight.bold);
    return SingleChildScrollView(
      child: Center(
          child: Padding(
              padding: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 20),
              child: SelectionArea(
                child: Wrap(
                  children: [
                    FractionallySizedBox(
                        widthFactor: width <= 768 ? 1 : 0.4,
                        child: Card(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: NetworkImage(
                                      "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1931&q=80",
                                    ),
                                    // child: Icon(
                                    //   Icons.person,
                                    //   size: 60,
                                    // ),
                                    backgroundColor: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Moganti Mohan Kesava",
                                    textAlign: TextAlign.center,
                                    style: titleStyle,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Y19CSE279017",
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Passed Out | R17",
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Divider(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Fee Info",
                                        style: titleStyle,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.info,
                                        size: 16,
                                      ),
                                      Expanded(child: SizedBox()),
                                      Tooltip(
                                        message: "Fee Status",
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 4.0,
                                                      horizontal: 8),
                                              child: Text(
                                                "Paid",
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .bodyMedium!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Wrap(
                                    spacing: 10,
                                    children: [
                                      Chip(
                                          label: Text(
                                        "JVD",
                                      )),
                                      Chip(
                                          label: Text(
                                        "Hostel Fee",
                                      ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  RichText(
                                    text: TextSpan(children: [
                                      const TextSpan(text: "Paid:"),
                                      TextSpan(
                                          text: " 2200 ", style: titleStyle),
                                      const TextSpan(text: "| Due:"),
                                      TextSpan(text: " 0 ", style: titleStyle),
                                      const TextSpan(text: "| Total:"),
                                      TextSpan(
                                          text: " 2200 ", style: titleStyle),
                                    ]),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Divider(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "More Info",
                                        style: titleStyle,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.info,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Wrap(
                                    spacing: 10,
                                    runSpacing: 10,
                                    children: [
                                      Chip(label: Text("2023 - passout")),
                                      Chip(label: Text("CSE")),
                                      Chip(label: Text("Regular")),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Table(
                                    children: [
                                      TableRow(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Admission Number - ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color:
                                                        Colors.grey.shade700),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " 1901017 ",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Date of Joining - ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color:
                                                        Colors.grey.shade700),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " 20/08/2019 ",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Aadhaar - ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color:
                                                        Colors.grey.shade700),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " 352215560286 ",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Stay Type - ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color:
                                                        Colors.grey.shade700),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Day Scholar ",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Gender - ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color:
                                                        Colors.grey.shade700),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Male ",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Date of Birth - ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color:
                                                        Colors.grey.shade700),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " 15/07/2002 ",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Father Name - ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color:
                                                        Colors.grey.shade700),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Moganti Venkata Subba Rao ",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Mother Name - ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color:
                                                        Colors.grey.shade700),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Moganti Kirana Kumari ",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Caste - ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color:
                                                        Colors.grey.shade700),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " OC ",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Sub Caste - ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color:
                                                        Colors.grey.shade700),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Kapu ",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ]),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [],
                                  )
                                ],
                              ),
                            )
                          ],
                        ))),
                    FractionallySizedBox(
                        widthFactor: width <= 768 ? 1 : 0.6,
                        child: Column(
                          children: [
                            Card(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Contact Info",
                                        style: titleStyle,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.info,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Wrap(
                                    spacing: 10,
                                    runSpacing: 10,
                                    children: [
                                      Chip(
                                        label: Text("9441719386"),
                                        avatar: Icon(Icons.phone_rounded),
                                      ),
                                      Chip(
                                        label: Text("9866349692"),
                                        avatar: Icon(Icons.phone_rounded),
                                      ),
                                      Chip(
                                        label: Text("mogantikesava@gmail.com"),
                                        avatar: Icon(Icons.mail_rounded),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Text(
                                          "Address",
                                          style: titleStyle,
                                        ),
                                      ),
                                      Expanded(child: Divider()),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                      "20/326-5, Brahmapuram, Machilipatnam, Krishna, Andhra Pradesh, 521002"),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Text(
                                          "Social Profile",
                                          style: titleStyle,
                                        ),
                                      ),
                                      Expanded(child: Divider()),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Wrap(
                                    spacing: 10,
                                    runSpacing: 10,
                                    children: [
                                      ActionChip(
                                        label: Text("GitHub"),
                                        onPressed: () {},
                                        avatar: Icon(Icons.person),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      ActionChip(
                                        label: Text("LinkedIn"),
                                        onPressed: () {},
                                        avatar: Icon(Icons.person),
                                      ),
                                      ActionChip(
                                        label: Text("Resume / CV"),
                                        onPressed: () {},
                                        avatar:
                                            Icon(Icons.file_present_rounded),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            )),
                            SizedBox(
                              height: 5,
                            ),
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Result & Attendance",
                                        style: titleStyle,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.info,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(child: SizedBox()),
                                      Text(" 9.0 ", style: titleStyle),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "CGPA",
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "99%",
                                        style: titleStyle,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("Avg. Attendance"),
                                      Expanded(child: SizedBox())
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Text(
                                          "SGPA & Attendance",
                                          style: titleStyle,
                                        ),
                                      ),
                                      Expanded(child: Divider()),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FractionallySizedBox(
                                      widthFactor: 1,
                                      child: Container(
                                        height: 400,
                                        child: LineChart(LineChartData(
                                          lineTouchData: LineTouchData(
                                              touchTooltipData:
                                                  LineTouchTooltipData(
                                                      getTooltipItems:
                                                          (touchedSpots) {
                                                        return touchedSpots.map(
                                                          (LineBarSpot
                                                              touchedSpot) {
                                                            TextStyle
                                                                textStyle =
                                                                TextStyle(
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: touchedSpot
                                                                  .bar.color,
                                                            );
                                                            return LineTooltipItem(
                                                                // points[touchedSpot.spotIndex].y.toStringAsFixed(2),
                                                                touchedSpot.barIndex ==
                                                                        0
                                                                    ? touchedSpot
                                                                            .y
                                                                            .toString() +
                                                                        "% Attendance"
                                                                    : touchedSpot
                                                                            .y
                                                                            .toString() +
                                                                        "% Score & (${touchedSpot.barIndex} CGPA)",
                                                                textStyle);
                                                          },
                                                        ).toList();
                                                      },
                                                      tooltipBgColor: Colors
                                                          .grey.shade100)),
                                          gridData: FlGridData(show: false),
                                          borderData: FlBorderData(
                                              show: true,
                                              border: Border(
                                                  left: BorderSide(),
                                                  bottom: BorderSide())),
                                          titlesData: FlTitlesData(
                                              show: true,
                                              topTitles: AxisTitles(),
                                              rightTitles: AxisTitles(),
                                              leftTitles: AxisTitles(
                                                  axisNameWidget: Text(
                                                    "Percentage %",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  axisNameSize: 30,
                                                  sideTitles: SideTitles(
                                                      showTitles: true,
                                                      reservedSize: 35,
                                                      interval: 10)),
                                              bottomTitles: AxisTitles(
                                                  axisNameWidget: Text(
                                                    "Semesters",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  axisNameSize: 30,
                                                  sideTitles: SideTitles(
                                                      reservedSize: 35,
                                                      showTitles: true,
                                                      getTitlesWidget:
                                                          (value, meta) {
                                                        switch (value.toInt()) {
                                                          case 1:
                                                            return Text("I");

                                                          case 2:
                                                            return Text("II");
                                                          case 3:
                                                            return Text("III");
                                                          case 4:
                                                            return Text("IV");
                                                          case 5:
                                                            return Text("V");
                                                          case 6:
                                                            return Text("VI");
                                                          case 7:
                                                            return Text("VII");
                                                          case 8:
                                                            return Text("VIII");
                                                        }
                                                        return Text("");
                                                      },
                                                      interval: 1))),
                                          minX: 1,
                                          minY: 0,
                                          maxX: 8,
                                          maxY: 100,
                                          lineBarsData: [
                                            LineChartBarData(
                                                color: Colors.purple,
                                                isCurved: true,
                                                spots: [
                                                  FlSpot(1, 60),
                                                  FlSpot(2, 70),
                                                  FlSpot(3, 85),
                                                  FlSpot(4, 96),
                                                  FlSpot(5, 75),
                                                  FlSpot(6, 72),
                                                  FlSpot(7, 74)
                                                ]),
                                            LineChartBarData(
                                                color: Colors.green,
                                                isCurved: true,
                                                spots: [
                                                  FlSpot(1, 50),
                                                  FlSpot(2, 80),
                                                  FlSpot(3, 75),
                                                  FlSpot(4, 86),
                                                  FlSpot(5, 95),
                                                  FlSpot(6, 92),
                                                ]),
                                          ],
                                        )),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ))),
    );
  }
}
