import 'package:e_krucet/data/models/list_card_model.dart';
import 'package:e_krucet/ui/widgets/list_card.dart';
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                        runSpacing: 10,
                        children: List.generate(4, (index) {
                          return FractionallySizedBox(
                              widthFactor: width > 1100
                                  ? 0.24
                                  : width > 780
                                      ? 0.48
                                      : 0.94,
                              child: ListCard(
                                listCards: [
                                  ListCardModel(
                                      title: "2019 - Passouts",
                                      subtitle: "IV - Semester Laterals",
                                      count: "35"),
                                  ListCardModel(
                                      title: "ECE Laterals",
                                      subtitle: "2019 - passout | iv - sem",
                                      count: "22")
                                ],
                              ));
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
