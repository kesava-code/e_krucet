import 'package:e_krucet/data/models/navigation_item_model.dart';
import 'package:e_krucet/logic/cubit/navigation_index_cubit.dart';
import 'package:e_krucet/ui/screens/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SideNavigationRail extends StatefulWidget {
  const SideNavigationRail({super.key});

  @override
  State<SideNavigationRail> createState() => _SideNavigationRailState();
}

class _SideNavigationRailState extends State<SideNavigationRail> {
  @override
  Widget build(BuildContext context) {
    List<NavigationItem> navigationItemList =
        BlocProvider.of<NavigationIndexCubit>(context)
            .navigationItems
            .values
            .toList()
            .sublist(0, 4);
    List<NavigationRailDestination> navigationRailDestinationList =
        navigationItemList.map((e) {
      return NavigationRailDestination(icon: e.icon, label: Text(e.name));
    }).toList();

    return BlocBuilder<NavigationIndexCubit, NavigationIndexState>(
      builder: (context, state) {
        if (state is NavigationIndex) {
          return NavigationRail(
            indicatorShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            elevation: 5,
            selectedIconTheme:
                IconThemeData(color: Theme.of(context).scaffoldBackgroundColor),
            useIndicator: true,
            labelType: NavigationRailLabelType.all,
            destinations: navigationRailDestinationList,
            selectedIndex:
                state.index >= navigationItemList.length ? null : state.index,
            onDestinationSelected: (value) {
              GoRouter.of(context).go(navigationItemList[value].path);
            },
          );
        }
        return SizedBox();
      },
    );
  }
}

class SideNavigationDrawer extends StatelessWidget {
  final GoRouter router = Routes.router;
  SideNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, NavigationItem> navigationItems =
        BlocProvider.of<NavigationIndexCubit>(context).navigationItems;

    return BlocBuilder<NavigationIndexCubit, NavigationIndexState>(
      builder: (context, state) {
        if (state is NavigationIndex) {
          return ListView(
            children: navigationItems.values.map(
              (v) {
                return ListTile(
                  selectedColor: Theme.of(context).scaffoldBackgroundColor,
                  selected: v.index == state.index,
                  selectedTileColor: Theme.of(context).primaryColor,
                  onTap: () {
                    Scaffold.of(context).closeDrawer();
                    Future.delayed(const Duration(milliseconds: 500), () {
                      router.go(v.path);
                    });
                  },
                  leading: v.icon,
                  title: Text(v.name),
                );
              },
            ).toList(),
          );
        }
        return const CupertinoActivityIndicator();
      },
    );
  }
}
