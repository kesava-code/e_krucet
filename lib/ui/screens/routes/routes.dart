import 'package:e_krucet/main.dart';
import 'package:e_krucet/ui/screens/student/student_batch.dart';
import 'package:e_krucet/ui/screens/student/student_branch.dart';
import 'package:e_krucet/ui/screens/student/student_caste.dart';
import 'package:e_krucet/ui/screens/student/student_dashboard.dart';
import 'package:e_krucet/ui/screens/student/student_details.dart';
import 'package:e_krucet/ui/screens/student/student_home.dart';
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
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) =>
            const MyHomePage(title: 'E - KRUCET Dashboard'),
      ),

      ShellRoute(
          navigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state, child) {
            return CustomFadeTransition(child: StudentDashboard(child: child));
          },
          routes: [
            GoRoute(
                path: '/student',
                pageBuilder: (context, state) {
                  return CustomFadeTransition(child: StudentHome());
                },
                routes: [
                  GoRoute(
                    path: "batch",
                    pageBuilder: (context, state) {
                      return CustomFadeTransition(child: StudentBatch());
                    },
                  ),
                  GoRoute(
                    path: "branch",
                    pageBuilder: (context, state) {
                      return CustomFadeTransition(child: StudentBranch());
                    },
                  ),
                  GoRoute(
                    path: "regulation",
                    pageBuilder: (context, state) {
                      return CustomFadeTransition(child: StudentRegulation());
                    },
                  ),
                  GoRoute(
                    path: "caste",
                    pageBuilder: (context, state) {
                      return CustomFadeTransition(child: StudentCaste());
                    },
                  ),
                  GoRoute(
                    path: "search",
                    pageBuilder: (context, state) {
                      return CustomFadeTransition(child: StudentSearch());
                    },
                  ),
                  GoRoute(
                    path: "details",
                    pageBuilder: (context, state) {
                      return CustomFadeTransition(child: StudentDetails());
                    },
                  ),
                ])
          ])

      /// Application shell
    ],
  );
}

class CustomFadeTransition extends CustomTransitionPage<void> {
  CustomFadeTransition({super.key, required super.child})
      : super(
          transitionDuration: const Duration(milliseconds: 0),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeIn).animate(animation),
              child: child,
            );
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
