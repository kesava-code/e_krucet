import 'package:e_krucet/logic/cubit/navigation_index_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SideNavigationRail extends StatefulWidget {
  final List<dynamic> navigationItemsList;

  const SideNavigationRail({super.key, required this.navigationItemsList});

  @override
  State<SideNavigationRail> createState() => _SideNavigationRailState();
}

class _SideNavigationRailState extends State<SideNavigationRail> {
  List<NavigationRailDestination> navigationItems = [];
  List<String> navigationRoutes = [];
  @override
  void initState() {
    // TODO: implement initState
    navigationItems = widget.navigationItemsList
        .map((e) => NavigationRailDestination(icon: e[1], label: Text(e[0])))
        .toList();
    navigationRoutes =
        widget.navigationItemsList.map((e) => e[2].toString()).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            destinations: navigationItems,
            selectedIndex:
                state.index > navigationItems.length ? null : state.index,
            onDestinationSelected: (value) {
              BlocProvider.of<NavigationIndexCubit>(context).change(value);
              GoRouter.of(context).go(navigationRoutes[value]);
            },
          );
        }
        return SizedBox();
      },
    );
  }
}

class SideNavigationDrawer extends StatelessWidget {
  final List<List<dynamic>> navigationItemsList;
  const SideNavigationDrawer({super.key, required this.navigationItemsList});

  @override
  Widget build(BuildContext context) {
    List<ListTile> navigationItems = [];
    List<dynamic> items = navigationItemsList;

    return BlocBuilder<NavigationIndexCubit, NavigationIndexState>(
      builder: (context, state) {
        if (state is NavigationIndex) {
          for (int i = 0; i < items.length; i++) {
            navigationItems.add(ListTile(
              selectedColor: Theme.of(context).scaffoldBackgroundColor,
              selected: i == state.index ? true : false,
              selectedTileColor: Theme.of(context).primaryColor,
              onTap: () {
                BlocProvider.of<NavigationIndexCubit>(context).change(i);
                GoRouter.of(context).go(items[i][2]);
              },
              leading: items[i][1],
              title: Text(items[i][0]),
            ));
          }
          return ListView(
            children: navigationItems,
          );
        }
        return CupertinoActivityIndicator();
      },
    );
  }
}
