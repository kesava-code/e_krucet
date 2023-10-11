import 'package:e_krucet/data/models/list_card_model.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final List<ListCardModel> listCards;

  const ListCard({super.key, required this.listCards});

  @override
  Widget build(BuildContext context) {
    TextStyle countStyle = Theme.of(context)
        .primaryTextTheme
        .titleLarge!
        .copyWith(color: Theme.of(context).primaryColorDark);
    TextStyle titleStyle = Theme.of(context).textTheme.titleMedium!;
    TextStyle titleSmall = Theme.of(context).textTheme.bodyMedium!;
    TextStyle titleLabelStyle = Theme.of(context).textTheme.bodySmall!;
    List<Widget> childrenCards = [];
    childrenCards.addAll([
      ListTile(
        trailing: Text(
          listCards[0].count,
          textAlign: TextAlign.right,
          style: countStyle,
        ),
        subtitle: Text(listCards[0].subtitle, style: titleLabelStyle),
        title: Text(
          listCards[0].title,
          style: titleStyle.copyWith(fontWeight: FontWeight.w500),
        ),
        onTap: () {},
      ),
      Divider(
        thickness: 1,
        height: 1,
        indent: 40,
        endIndent: 40,
      ),
    ]);
    for (int i = 1; i < listCards.length; i++) {
      childrenCards.add(ListTile(
        subtitle: Text(listCards[i].subtitle, style: titleLabelStyle),
        title: Text(
          listCards[i].title,
          style: titleSmall,
        ),
        trailing: Text(listCards[i].count,
            style: countStyle, textAlign: TextAlign.right),
        onTap: () {},
      ));
    }

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(color: Colors.grey.shade400)),
      child: Column(children: childrenCards),
    );
  }
}
