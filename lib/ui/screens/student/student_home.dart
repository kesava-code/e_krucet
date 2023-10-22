import 'dart:math';

import 'package:e_krucet/data/models/list_card_model.dart';
import 'package:e_krucet/logic/cubit/navigation_index_cubit.dart';
import 'package:e_krucet/ui/widgets/Overview_card.dart';
import 'package:e_krucet/ui/widgets/list_card.dart';
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
    TextStyle titleLabelStyle = Theme.of(context).textTheme.bodySmall!;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Overview",
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Wrap(
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.spaceAround,
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
                  OverviewCard(
                      title: "Students Fee Paid",
                      icon: Icons.check_circle_rounded,
                      subTitle: "600"),
                  OverviewCard(
                      title: "Students Fee Unpaid",
                      icon: Icons.close_rounded,
                      subTitle: "20")
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
                            child: Text('Active Batches ',
                                style: titleStyle.copyWith(
                                    fontWeight: FontWeight.bold)),
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
                                    style: titleStyle.copyWith(
                                        fontWeight: FontWeight.bold)),
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
                                      style: titleStyle.copyWith(
                                          fontWeight: FontWeight.bold)),
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
