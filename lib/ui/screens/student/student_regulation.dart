import 'package:flutter/material.dart';

class StudentRegulation extends StatelessWidget {
  const StudentRegulation({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
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
                            child: ListTile(
                              subtitle: Text(
                                'Regulation 2017' * (index + 2),
                                style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .fontSize,
                                ),
                              ),
                              title: Text(
                                'R17',
                              ),
                              trailing: Text(
                                "( 60 )",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        color: Theme.of(context).primaryColor),
                              ),
                              onTap: () {},
                            ),
                          ),
                        );
                      })),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
