import 'package:e_krucet/ui/widgets/title_count_row.dart';
import 'package:flutter/material.dart';

class StudentCaste extends StatelessWidget {
  const StudentCaste({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TitleCountRow(
              count: "10",
              icon: Icons.groups_3_rounded,
              title: "Castes and Sub-Castes"),
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
