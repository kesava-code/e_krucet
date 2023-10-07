import 'package:e_krucet/ui/widgets/Overview_card.dart';
import 'package:flutter/material.dart';

class StudentHome extends StatelessWidget {
  const StudentHome({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  OverviewCard(
                      title: "Total Students",
                      icon: Icons.diversity_1_rounded,
                      subTitle: "2000"),
                  OverviewCard(
                      title: "Total Branches",
                      icon: Icons.category_rounded,
                      subTitle: "4"),
                  OverviewCard(
                      title: "Total Batches",
                      icon: Icons.people_rounded,
                      subTitle: "6"),
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
                            "All pursuing students list",
                            style: titleLabelStyle,
                          )),
                          title: Center(
                            child: Text('  Batches ', style: titleStyle),
                          ),
                          trailing: Text(
                            "120",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                    color: Theme.of(context).primaryColor),
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
                              child: Card(
                                child: Column(
                                  children: [
                                    ListTile(
                                      trailing: Text(
                                        "( 120 )",
                                        style: titleStyle.copyWith(
                                            color:
                                                Theme.of(context).primaryColor),
                                      ),
                                      leading: SizedBox(
                                        width: 40,
                                        child: FractionallySizedBox(
                                          heightFactor: 1,
                                          child: Ink(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .background,
                                            child: Center(
                                              child: Text(
                                                'iv sem',
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      subtitle: Text('passouts',
                                          style: titleLabelStyle),
                                      title: Text(
                                        '2023',
                                      ),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      subtitle: Text(
                                          'Computer Science Engineering' *
                                              (index + 2),
                                          style: titleLabelStyle),
                                      title: Text(
                                        'CSE',
                                      ),
                                      trailing: Text(
                                        "( 60 )",
                                        style: titleStyle.copyWith(
                                            color:
                                                Theme.of(context).primaryColor),
                                      ),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      subtitle: Text(
                                          'Electronic Communication Engineering',
                                          style: titleLabelStyle),
                                      title: Text(
                                        'ECE',
                                      ),
                                      trailing: Text(
                                        "( 60 )",
                                        style: titleStyle.copyWith(
                                            color:
                                                Theme.of(context).primaryColor),
                                      ),
                                      onTap: () {},
                                    )
                                  ],
                                ),
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
                                "pursuing Regulars list",
                                style: titleLabelStyle,
                              )),
                              title: Center(
                                child: Text('Regulars', style: titleStyle),
                              ),
                              trailing: Text(
                                "( 120 )",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        color: Theme.of(context).primaryColor),
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
                                  child: Card(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          trailing: Text(
                                            "( 120 )",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge!
                                                .copyWith(
                                                    color: Theme.of(context)
                                                        .primaryColor),
                                          ),
                                          subtitle: Center(
                                            child: Text(
                                              'passouts ( Regulars )',
                                              style: TextStyle(
                                                fontSize: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium!
                                                    .fontSize,
                                              ),
                                            ),
                                          ),
                                          title: Center(
                                            child: Text(
                                              '2023',
                                            ),
                                          ),
                                          onTap: () {},
                                        ),
                                        ListTile(
                                          subtitle: Text(
                                            'Regulars List' * (index + 2),
                                            style: TextStyle(
                                              fontSize: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium!
                                                  .fontSize,
                                            ),
                                          ),
                                          title: Text(
                                            'CSE',
                                          ),
                                          trailing: Text(
                                            "( 60 )",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge!
                                                .copyWith(
                                                    color: Theme.of(context)
                                                        .primaryColor),
                                          ),
                                          onTap: () {},
                                        ),
                                        ListTile(
                                          subtitle: Text(
                                            'Regulars list',
                                            style: TextStyle(
                                              fontSize: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium!
                                                  .fontSize,
                                            ),
                                          ),
                                          title: Text(
                                            'ECE',
                                          ),
                                          trailing: Text(
                                            "( 60 )",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge!
                                                .copyWith(
                                                    color: Theme.of(context)
                                                        .primaryColor),
                                          ),
                                          onTap: () {},
                                        )
                                      ],
                                    ),
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
                                  "pursuing Regulars list",
                                  style: titleLabelStyle,
                                )),
                                title: Center(
                                  child: Text('Regulars', style: titleStyle),
                                ),
                                trailing: Text(
                                  "( 120 )",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          color:
                                              Theme.of(context).primaryColor),
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
                                    child: Card(
                                      child: Column(
                                        children: [
                                          ListTile(
                                            trailing: Text(
                                              "( 120 )",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge!
                                                  .copyWith(
                                                      color: Theme.of(context)
                                                          .primaryColor),
                                            ),
                                            subtitle: Center(
                                              child: Text(
                                                'passouts ( Regulars )',
                                                style: TextStyle(
                                                  fontSize: Theme.of(context)
                                                      .textTheme
                                                      .labelMedium!
                                                      .fontSize,
                                                ),
                                              ),
                                            ),
                                            title: Center(
                                              child: Text(
                                                '2023',
                                              ),
                                            ),
                                            onTap: () {},
                                          ),
                                          ListTile(
                                            subtitle: Text(
                                              'Regulars List' * (index + 2),
                                              style: TextStyle(
                                                fontSize: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium!
                                                    .fontSize,
                                              ),
                                            ),
                                            title: Text(
                                              'CSE',
                                            ),
                                            trailing: Text(
                                              "( 60 )",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge!
                                                  .copyWith(
                                                      color: Theme.of(context)
                                                          .primaryColor),
                                            ),
                                            onTap: () {},
                                          ),
                                          ListTile(
                                            subtitle: Text(
                                              'Regulars list',
                                              style: TextStyle(
                                                fontSize: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium!
                                                    .fontSize,
                                              ),
                                            ),
                                            title: Text(
                                              'ECE',
                                            ),
                                            trailing: Text(
                                              "( 60 )",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge!
                                                  .copyWith(
                                                      color: Theme.of(context)
                                                          .primaryColor),
                                            ),
                                            onTap: () {},
                                          )
                                        ],
                                      ),
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
