import 'package:e_krucet/ui/widgets/title_count_row.dart';
import 'package:flutter/material.dart';

class StudentHome extends StatelessWidget {
  const StudentHome({super.key});

  @override
  Widget build(BuildContext context) {
    
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          TitleCountRow(
              count: "1900", icon: Icons.person_rounded, title: "Overview"),
          Wrap(
            spacing: (2 / 100) * width,
            runSpacing: 30,
            children: [
              FractionallySizedBox(
                widthFactor: width > 1100 ? 0.47 : 0.94,
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: ListTile(
                              subtitle:
                                  Center(child: Text("pursuing student list")),
                              title: Center(
                                child: Text(' Batches ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                            fontSize: Theme.of(context)
                                                .textTheme
                                                .headlineSmall!
                                                .fontSize)),
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
                          )),
                      Wrap(
                          spacing: 10,
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
                                        subtitle: Text(
                                          'passouts',
                                          style: TextStyle(
                                            fontSize: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .fontSize,
                                          ),
                                        ),
                                        title: Text(
                                          '2023',
                                        ),
                                        onTap: () {},
                                      ),
                                      ListTile(
                                        subtitle: Text(
                                          'Computer Science Engineering' *
                                              (index + 2),
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
                                          'Electronic Communication Engineering',
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
                                "View All",
                                style: Theme.of(context).textTheme.titleLarge,
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
              FractionallySizedBox(
                  widthFactor: width > 1100 ? 0.48 : 0.94,
                  child: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: ListTile(
                              subtitle:
                                  Center(child: Text("pursuing Regulars list")),
                              title: Center(
                                child: Text('Regulars',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                            fontSize: Theme.of(context)
                                                .textTheme
                                                .headlineSmall!
                                                .fontSize)),
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
                            spacing: 10,
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
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        subtitle: Center(child: Text("pursuing Regulars list")),
                        title: Center(
                          child: Text('Regulars',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .fontSize)),
                        ),
                        trailing: Text(
                          "( 120 )",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Theme.of(context).primaryColor),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: List.generate(4, (index) {
                        return FractionallySizedBox(
                            widthFactor: width > 1100
                                ? 0.24
                                : width > 700
                                    ? 0.48
                                    : 0.94,
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
          )
        ],
      ),
    );
  }
}
