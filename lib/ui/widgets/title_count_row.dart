import 'package:flutter/material.dart';

class TitleCountRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String count;
  const TitleCountRow({
    super.key,
    required this.count,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
              )),
          const Expanded(
            child: SizedBox(),
          ),
          Expanded(
            child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    icon,
                    size: Theme.of(context).iconTheme.size,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text("Pursuing Students",
                          style: Theme.of(context).textTheme.labelSmall),
                      Text(
                        count,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
