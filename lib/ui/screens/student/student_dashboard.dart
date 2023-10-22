import 'dart:developer';

import 'package:e_krucet/logic/cubit/navigation_index_cubit.dart';
import 'package:e_krucet/ui/widgets/side_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({super.key, required this.child});
  final Widget child;

  @override
  State<StudentDashboard> createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return BlocProvider<NavigationIndexCubit>(
      create: (context) => NavigationIndexCubit(),
      child: Builder(builder: (context) {
        return Scaffold(
          key: scaffoldKey,
          drawer: Drawer(
            elevation: 10,
            width: 220,
            child: SideNavigationDrawer(),
          ),
          endDrawer: Drawer(),
          appBar: AppBar(
            flexibleSpace: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 400),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                      child: TextField(
                        controller: searchController,
                        onSubmitted: (value) {
                          print(searchController.value.text);
                        },
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            hintText: "Search by Id or Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    bottomLeft: Radius.circular(4)))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(4),
                                    bottomRight: Radius.circular(4)))),
                        onPressed: () {
                          print(searchController.value.text);
                        },
                        child: Icon(Icons.search_rounded),
                      ),
                    ),
                  )
                ],
              ),
            ),
            actions: [
              Builder(builder: (context) {
                return IconButton(
                  onPressed: () {
                    // scaffoldKey.currentState!.openEndDrawer();
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: const Icon(Icons.tune_rounded),
                  tooltip: "Filters",
                );
              })
            ],
            title: TextButton(
              onPressed: (() {
                GoRouter.of(context).go("/");
              }),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints.loose(const Size(50, 50)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(
                        "lib/images/krucet.png",
                        height: 40,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  const Text(
                    "Krishna University",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          body: SafeArea(
            child: Center(
              child: Row(children: [
                const SideNavigationRail(),
                Expanded(
                  child: widget.child,
                )
              ]),
            ),
          ),
        );
      }),
    );
  }
}
