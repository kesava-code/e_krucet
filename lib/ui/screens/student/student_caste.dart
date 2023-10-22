import 'package:e_krucet/logic/cubit/navigation_index_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentCaste extends StatelessWidget {
  const StudentCaste({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NavigationIndexCubit>(context).change(
        BlocProvider.of<NavigationIndexCubit>(context)
            .navigationItems["caste"]!
            .index);
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 700),
              child: Column(
                children: List.generate(4, (index) {
                  return ExpansionTile(
                    childrenPadding: EdgeInsets.all(20),
                    children: List.generate(4, (index) {
                      return ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Theme.of(context).hoverColor,
                              ),
                              width: 100,
                              child: Center(child: Text("600"))),
                        ),
                        title: Text(
                          'Kapu',
                        ),
                        onTap: () {},
                      );
                    }),
                    leading: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                        ),
                        width: 100,
                        child: Center(child: Text("1000"))),
                    collapsedShape: const Border(bottom: BorderSide()),
                    shape: const Border(bottom: BorderSide()),
                    iconColor: Colors.black,
                    collapsedIconColor: Colors.black,
                    subtitle: Text(
                      'Other Category' * (index + 2),
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.labelMedium!.fontSize,
                      ),
                    ),
                    title: Text(
                      'OC',
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
