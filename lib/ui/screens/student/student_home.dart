import 'dart:math';

import 'package:e_krucet/data/models/list_card_model.dart';
import 'package:e_krucet/logic/cubit/navigation_index_cubit.dart';
import 'package:e_krucet/ui/widgets/Overview_card.dart';
import 'package:e_krucet/ui/widgets/list_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentHome extends StatelessWidget {
  const StudentHome({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NavigationIndexCubit>(context).change(
        BlocProvider.of<NavigationIndexCubit>(context)
            .navigationItems["home"]!
            .index);
    double width = MediaQuery.of(context).size.width;
    TextStyle countStyle = Theme.of(context)
        .primaryTextTheme
        .titleLarge!
        .copyWith(color: Theme.of(context).primaryColorDark);
    TextStyle titleStyle = Theme.of(context).textTheme.titleMedium!;
    TextStyle titleBoldStyle = Theme.of(context)
        .textTheme
        .titleMedium!
        .copyWith(fontWeight: FontWeight.bold);
    TextStyle titleLabelStyle = Theme.of(context).textTheme.bodySmall!;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Wrap(
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.start,
                children: [
                  width < 600
                      ? FractionallySizedBox(
                          widthFactor: 1,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OverviewCard(
                                  title: "Total Students",
                                  icon: Icons.diversity_1_rounded,
                                  subTitle: Random().nextInt(3000).toString()),
                              OverviewCard(
                                  title: "Total Batches",
                                  icon: Icons.people_rounded,
                                  subTitle: "6"),
                              OverviewCard(
                                  title: "Total Branches",
                                  icon: Icons.category_rounded,
                                  subTitle: "4"),
                            ],
                          ),
                        )
                      : width < 1200
                          ? FractionallySizedBox(
                              widthFactor: 1,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: OverviewCard(
                                        title: "Total Students",
                                        icon: Icons.diversity_1_rounded,
                                        subTitle:
                                            Random().nextInt(3000).toString()),
                                  ),
                                  Expanded(
                                    child: OverviewCard(
                                        title: "Total Batches",
                                        icon: Icons.people_rounded,
                                        subTitle: "6"),
                                  ),
                                  Expanded(
                                    child: OverviewCard(
                                        title: "Total Branches",
                                        icon: Icons.category_rounded,
                                        subTitle: "4"),
                                  ),
                                ],
                              ),
                            )
                          : FractionallySizedBox(
                              widthFactor: .16,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  OverviewCard(
                                      title: "Total Students",
                                      icon: Icons.diversity_1_rounded,
                                      subTitle:
                                          Random().nextInt(3000).toString()),
                                  OverviewCard(
                                      title: "Total Batches",
                                      icon: Icons.people_rounded,
                                      subTitle: "6"),
                                  OverviewCard(
                                      title: "Total Branches",
                                      icon: Icons.category_rounded,
                                      subTitle: "4"),
                                ],
                              ),
                            ),
                  FractionallySizedBox(
                    widthFactor: width < 900
                        ? 1
                        : width < 1200
                            ? .5
                            : .42,
                    child: Card(
                        child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 20, 5),
                      child: Column(
                        children: [
                          Text(
                            "Annual Student Enrollment by Branch.",
                            style: titleBoldStyle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 240,
                            child: LineChart(LineChartData(
                              lineTouchData: LineTouchData(
                                  touchTooltipData: LineTouchTooltipData(
                                      getTooltipItems: (touchedSpots) {
                                        return touchedSpots.map(
                                          (LineBarSpot touchedSpot) {
                                            TextStyle textStyle = TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                              color: touchedSpot.bar.color,
                                            );
                                            return LineTooltipItem(
                                                touchedSpot.barIndex == 0
                                                    ? touchedSpot.x.toString() +
                                                        " - " +
                                                        touchedSpot.y
                                                            .toString() +
                                                        " (CSE)"
                                                    : touchedSpot.x.toString() +
                                                        " - " +
                                                        touchedSpot.y
                                                            .toString() +
                                                        " (ECE)",
                                                textStyle);
                                          },
                                        ).toList();
                                      },
                                      tooltipBgColor: Colors.grey.shade100)),
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
                                        "Student count by branch",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      axisNameSize: 30,
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        reservedSize: 35,
                                        interval: 50,
                                        getTitlesWidget: (value, meta) => Text(
                                          value.toString(),
                                          style: titleLabelStyle,
                                        ),
                                      )),
                                  bottomTitles: AxisTitles(
                                      axisNameWidget: Text(
                                        "Year",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      axisNameSize: 30,
                                      sideTitles: SideTitles(
                                        reservedSize: 35,
                                        showTitles: true,
                                        interval: 3,
                                        getTitlesWidget: (value, meta) {
                                          return RotatedBox(
                                            quarterTurns: 3,
                                            child: Text(
                                              value.toInt().toString(),
                                              style: titleLabelStyle,
                                            ),
                                          );
                                        },
                                      ))),
                              minY: 0,
                              lineBarsData: [
                                LineChartBarData(
                                    color: Colors.purple,
                                    isCurved: true,
                                    spots: [
                                      FlSpot(2017, 60),
                                      FlSpot(2018, 70),
                                      FlSpot(2019, 85),
                                      FlSpot(2020, 96),
                                      FlSpot(2021, 75),
                                      FlSpot(2022, 72),
                                      FlSpot(2023, 74),
                                      FlSpot(2024, 60),
                                      FlSpot(2025, 70),
                                      FlSpot(2026, 85),
                                      FlSpot(2028, 96),
                                      FlSpot(2029, 75),
                                      FlSpot(2030, 72),
                                      FlSpot(2031, 74)
                                    ]),
                                LineChartBarData(
                                    color: Colors.green,
                                    isCurved: true,
                                    spots: [
                                      FlSpot(2018, 50),
                                      FlSpot(2019, 80),
                                      FlSpot(2020, 75),
                                      FlSpot(2021, 86),
                                      FlSpot(2022, 95),
                                      FlSpot(2023, 92),
                                    ]),
                              ],
                            )),
                          ),
                        ],
                      ),
                    )),
                  ),
                  FractionallySizedBox(
                    widthFactor: width < 900
                        ? 1
                        : width < 1200
                            ? .5
                            : .42,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Students with cleared and uncleared outstandings",
                              style: titleBoldStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 245,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    height: 150,
                                    child: PieChart(PieChartData(
                                      sectionsSpace: 2,
                                      sections: [
                                        PieChartSectionData(
                                            value: 9000,
                                            showTitle: false,
                                            color: Colors.green,
                                            radius: 20),
                                        PieChartSectionData(
                                            radius: 20,
                                            showTitle: false,
                                            value: 900,
                                            color: Colors.red)
                                      ],
                                      centerSpaceRadius: 50,
                                    )),
                                  ),
                                  Expanded(
                                      child: SizedBox(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          ListTile(
                                            leading: ColoredBox(
                                              color: Colors.green,
                                              child: SizedBox(
                                                width: 10,
                                                height: 10,
                                              ),
                                            ),
                                            title: Text(
                                              "9000",
                                              style: titleStyle,
                                            ),
                                            subtitle: Text(
                                              "Students cleared outstandings.",
                                              style: titleLabelStyle,
                                            ),
                                          ),
                                          ListTile(
                                            leading: ColoredBox(
                                              color: Colors.red,
                                              child: SizedBox(
                                                width: 10,
                                                height: 10,
                                              ),
                                            ),
                                            title: Text(
                                              "900",
                                              style: titleStyle,
                                            ),
                                            subtitle: Text(
                                              "Students uncleared outstandings.",
                                              style: titleLabelStyle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  // OverviewCard(
                  //     title: "Students Fee Paid",
                  //     icon: Icons.check_circle_rounded,
                  //     subTitle: "600"),
                  // OverviewCard(
                  //     title: "Students Fee Unpaid",
                  //     icon: Icons.close_rounded,
                  //     subTitle: "20")
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: ListTile(
                          enableFeedback: true,
                          subtitle: Center(
                              child: Text(
                            "2019 | 2020 | 2021 | 2023 Batches",
                            style: titleLabelStyle,
                          )),
                          title: Center(
                            child:
                                Text('Active Batches ', style: titleBoldStyle),
                          ),
                          trailing: Text(
                            "120",
                            style: countStyle,
                          ),
                          onTap: () {},
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                        runSpacing: 10,
                        children: List.generate(4, (index) {
                          return FractionallySizedBox(
                              widthFactor: width > 1100
                                  ? 0.25
                                  : width > 700
                                      ? 0.5
                                      : 1,
                              child: ListCard(
                                listCards: [
                                  ListCardModel(
                                      title: "2023 - passouts",
                                      subtitle: "IV - Semester",
                                      count: "120"),
                                  ListCardModel(
                                      title: "CSE",
                                      subtitle: "Computer Science Engineering",
                                      count: "60"),
                                  ListCardModel(
                                      title: "ECE",
                                      subtitle:
                                          "Electonics and Communication Engineering",
                                      count: "36")
                                ],
                              ));
                        })),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    tileColor: Theme.of(context).focusColor,
                    onTap: () {},
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "View All Batches",
                            style: titleStyle,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.arrow_circle_right_rounded)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              runSpacing: 10,
              children: [
                FractionallySizedBox(
                  widthFactor: width > 1100 ? 0.5 : 1,
                  child: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: ListTile(
                              subtitle: Center(
                                  child: Text(
                                "2019 | 2020 | 2021 | 2023 Batch students",
                                style: titleLabelStyle,
                              )),
                              title: Center(
                                child: Text('Active Regulars',
                                    style: titleBoldStyle),
                              ),
                              trailing: Text(
                                "120",
                                style: countStyle,
                              ),
                              onTap: () {},
                            ),
                          ),
                        ),
                        Wrap(
                            runSpacing: 10,
                            children: List.generate(4, (index) {
                              return FractionallySizedBox(
                                  widthFactor: width > 700 ? 0.48 : 0.94,
                                  child: ListCard(
                                    listCards: [
                                      ListCardModel(
                                          title: "2019 - Passouts",
                                          subtitle: "IV - Semester Regulars",
                                          count: "35"),
                                      ListCardModel(
                                          title: "CSE Regulars",
                                          subtitle: "2019 - passout | iv - sem",
                                          count: "22")
                                    ],
                                  ));
                            })),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                FractionallySizedBox(
                    widthFactor: width > 1100 ? 0.5 : 1,
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: ListTile(
                                subtitle: Center(
                                    child: Text(
                                  "2019 | 2020 | 2021 | 2023 Batch students",
                                  style: titleLabelStyle,
                                )),
                                title: Center(
                                  child: Text('Active Laterals',
                                      style: titleBoldStyle),
                                ),
                                trailing: Text(
                                  "120",
                                  style: countStyle,
                                ),
                                onTap: () {},
                              ),
                            ),
                          ),
                          Wrap(
                              runSpacing: 10,
                              children: List.generate(4, (index) {
                                return FractionallySizedBox(
                                    widthFactor: width > 700 ? 0.48 : 0.94,
                                    child: ListCard(
                                      listCards: [
                                        ListCardModel(
                                            title: "2019 - Passouts",
                                            subtitle: "IV - Semester Laterals",
                                            count: "35"),
                                        ListCardModel(
                                            title: "ECE Laterals",
                                            subtitle:
                                                "2019 - passout | iv - sem",
                                            count: "22")
                                      ],
                                    ));
                              })),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
