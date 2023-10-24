import 'package:flutter/material.dart';

class OverviewCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  const OverviewCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = Theme.of(context).textTheme.titleLarge!;
    TextStyle titleLabelStyle = Theme.of(context).textTheme.bodySmall!;
    return SizedBox(
      child: Card(
        child: Center(
          child: ListTile(
            iconColor: Theme.of(context).primaryColor,
            contentPadding: EdgeInsets.all(16),
            enableFeedback: true,
            onTap: () {},
            title: Text(
              title,
              style: titleLabelStyle,
              textAlign: TextAlign.center,
            ),
            subtitle: Text(
              subTitle,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            leading: Icon(
              icon,
              size: 40,
            ),
          ),
        ),
      ),
      height: 100,
    );
  }
}
