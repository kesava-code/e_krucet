import 'package:flutter/material.dart';

class OverviewCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  OverviewCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    TextStyle titleStyle = Theme.of(context).textTheme.titleMedium!;
    TextStyle titleLabelStyle = Theme.of(context).textTheme.bodySmall!;
    return SizedBox(
      child: Card(
        child: Center(
          child: ListTile(
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
      width: width <= 375 ? double.infinity : 205,
      height: 100,
    );
  }
}
