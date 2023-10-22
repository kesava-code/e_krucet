import 'package:e_krucet/main.dart';
import 'package:e_krucet/ui/screens/student/student_batch.dart';
import 'package:e_krucet/ui/screens/student/student_branch.dart';
import 'package:e_krucet/ui/screens/student/student_caste.dart';
import 'package:e_krucet/ui/screens/student/student_dashboard.dart';
import 'package:e_krucet/ui/screens/student/student_details.dart';
import 'package:e_krucet/ui/screens/student/student_home.dart';
import 'package:e_krucet/ui/screens/student/student_profie.dart';
import 'package:e_krucet/ui/screens/student/student_regulation.dart';
import 'package:e_krucet/ui/screens/student/student_search.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class Routes {
  static final GoRouter router = GoRouter(
      debugLogDiagnostics: true,
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/',
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (context, state) =>
              const MyHomePage(title: 'E - KRUCET Dashboard'),
        ),
        ShellRoute(
            navigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state, child) {
              return CustomFadeTransition(
                  child: StudentDashboard(child: child));
            },
            routes: [
              GoRoute(
                  path: "/student",
                  pageBuilder: (context, state) {
                    return CustomFadeTransition(
                        child: Center(
                            child: Text(
                      "STUDENT PORTAL",
                      style: Theme.of(context).textTheme.headlineLarge,
                    )));
                  },
                  routes: [
                    GoRoute(
                      path: "home",
                      pageBuilder: (context, state) {
                        return CustomFadeTransition(child: const StudentHome());
                      },
                    ),
                    GoRoute(
                      path: "batch",
                      pageBuilder: (context, state) {
                        return CustomFadeTransition(
                            child: const StudentBatch());
                      },
                    ),
                    GoRoute(
                      path: "branch",
                      pageBuilder: (context, state) {
                        return CustomFadeTransition(
                            child: const StudentBranch());
                      },
                    ),
                    GoRoute(
                      path: "regulation",
                      pageBuilder: (context, state) {
                        return CustomFadeTransition(
                            child: const StudentRegulation());
                      },
                    ),
                    GoRoute(
                      path: "caste",
                      pageBuilder: (context, state) {
                        return CustomFadeTransition(
                            child: const StudentCaste());
                      },
                    ),
                    GoRoute(
                      path: "search",
                      pageBuilder: (context, state) {
                        return CustomFadeTransition(
                            child: const StudentSearch());
                      },
                    ),
                    GoRoute(
                      path: "profile",
                      pageBuilder: (context, state) {
                        return CustomFadeTransition(
                            child: const StudentProfile());
                      },
                    ),
                  ]),
            ])
      ]);

  /// Appl
}

class CustomFadeTransition extends CustomTransitionPage<void> {
  CustomFadeTransition({super.key, required super.child})
      : super(
          transitionDuration: const Duration(milliseconds: 0),
          transitionsBuilder: (_, animation, __, child) {
            return child;
          },
        );
}

    // routes: {
    //     '/': (context) => const MyHomePage(title: 'E-Krucet Dashboard'),
    //     '/student': (context) => const StudentDashboard(),
    //     '/fee': (context) => const FeeDashboard(),
    //     '/office': (context) => const OfficeDashboard(),
    //     '/syllabus': (context) => const SyllabusDashboard(),
    //     '/stock': (context) => const StockDashboard(),
    //     '/exams': (context) => const ExamsDashboard(),
    //     '/time-tables': (context) => const TimeTablesDashboard(),
    //     '/academic-calendars': (context) => const AcademicCalendarsDashboard(),
    //   },
