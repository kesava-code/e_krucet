import 'package:e_krucet/ui/widgets/title_count_row.dart';
import 'package:flutter/material.dart';

class StudentBatch extends StatefulWidget {
  const StudentBatch({super.key});

  @override
  State<StudentBatch> createState() => _StudentBatchState();
}

class _StudentBatchState extends State<StudentBatch> {
  @override
  Widget build(BuildContext context) {
    
    double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          TitleCountRow(
              count: "1500", icon: Icons.group_rounded, title: "Batches"),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Wrap(
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
                            ),
                          );
                        })),
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
