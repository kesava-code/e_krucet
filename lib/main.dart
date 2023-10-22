import 'package:e_krucet/ui/screens/routes/routes.dart';
import 'package:e_krucet/ui/widgets/dashboard_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routes.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.brown,

        fontFamily: "nunito",
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.brown,
          ),
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
              color: Colors.brown,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontFamily: "nunito"),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Row(
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
            Text(
              widget.title,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 0),
          child: Center(
            child: GridView(
              padding: const EdgeInsets.only(left: 15, right: 15),
              clipBehavior: Clip.none,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: 50,
                  crossAxisSpacing: 20,
                  maxCrossAxisExtent: 400,
                  mainAxisExtent: 200),
              children: const [
                DashboardCard(
                    route: '/student/home',
                    backgroundColor: 0XFFcd9d77,
                    description:
                        "View, Add, Delete, and Update Student Details (RegisterId, Name, Email, Mobile, Branch, etc..)",
                    icon: Icons.group_outlined,
                    iconColor: 0XFFb2704e,
                    textColor: 0XFF894949,
                    title: "Student"),
                DashboardCard(
                    route: '/fee',
                    backgroundColor: 0XFFc6e377,
                    description:
                        "View, Update, Add and Delete Student fee structures and view payments of Students here.",
                    icon: Icons.add_chart_outlined,
                    iconColor: 0XFF729d39,
                    textColor: 0XFF36622b,
                    title: "Fee"),
                DashboardCard(
                    route: '/office',
                    backgroundColor: 0XFFfcb040,
                    description:
                        "Details about Payments, circulars, staff and more",
                    icon: Icons.account_balance_rounded,
                    iconColor: 0XFFde703b,
                    textColor: 0XFF2f3c4f,
                    title: "Office"),
                DashboardCard(
                    route: '/syllabus',
                    backgroundColor: 0xFFe3eff3,
                    description:
                        "View details about Semester Syllabus and Regulations.",
                    icon: Icons.amp_stories_rounded,
                    iconColor: 0xFF6e828a,
                    textColor: 0xff143a52,
                    title: "Syllabus"),
                DashboardCard(
                    route: '/stock',
                    backgroundColor: 0XFF65c0ba,
                    description:
                        "View Details of Desks, Furnitures, Books, Computers and more.",
                    icon: Icons.store,
                    iconColor: 0XFFd2d86e,
                    textColor: 0XFF3f3f3f,
                    title: "Stock"),
                DashboardCard(
                    route: '/exams',
                    backgroundColor: 0xffffce00,
                    description: "Exam notifications, Results and more.",
                    icon: Icons.notifications_active_rounded,
                    iconColor: 0XFFe8984a,
                    textColor: 0xFF1b4b4d,
                    title: "Exams"),
                DashboardCard(
                    route: '/time-tables',
                    backgroundColor: 0xfffd2e2e,
                    description:
                        "Mid, Semester, Lab Internal and External Exam TimeTables",
                    icon: Icons.table_view_rounded,
                    iconColor: 0XFFcf1b1b,
                    textColor: 0xFFfffbcc,
                    title: "Time Tables"),
                DashboardCard(
                    route: '/academic-calendars',
                    backgroundColor: 0XFF55a44e,
                    description:
                        "View, upload, Delete and Modify academic calendars.",
                    icon: Icons.calendar_month_rounded,
                    iconColor: 0xff1b8057,
                    textColor: 0xffede9a3,
                    title: "Academic Calendars")
              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
