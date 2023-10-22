import 'package:e_krucet/data/models/list_card_model.dart';
import 'package:e_krucet/logic/cubit/navigation_index_cubit.dart';
import 'package:e_krucet/ui/widgets/list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentBatch extends StatelessWidget {
  const StudentBatch({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NavigationIndexCubit>(context).change(
        BlocProvider.of<NavigationIndexCubit>(context)
            .navigationItems["batch"]!
            .index);
    double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      child: Column(
        children: [
          Wrap(
              runSpacing: 10,
              children: List.generate(4, (index) {
                return FractionallySizedBox(
                    widthFactor: width > 1100
                        ? 0.25
                        : width > 780
                            ? 0.50
                            : 1,
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
              }))
        ],
      ),
    );
  }
}
