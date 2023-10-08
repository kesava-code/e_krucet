import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final int iconColor;
  final int backgroundColor;
  final int textColor;
  final String route;
  const DashboardCard({
    super.key,
    required this.route,
    required this.backgroundColor,
    required this.description,
    required this.icon,
    required this.iconColor,
    required this.textColor,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        InkWell(
          onTap: () => GoRouter.of(context).go(route),
          hoverColor: const Color.fromARGB(255, 252, 252, 252),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          child: Ink(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 230, 227, 227),
                  offset: Offset(
                    2.0,
                    5.0,
                  ),
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Flexible(
                    fit: FlexFit.tight,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5, color: Color(backgroundColor)),
                              color: Color(backgroundColor),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10))),
                          width: 100,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 5, color: Color(backgroundColor)),
                                color: Color(backgroundColor),
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10))),
                            child: Center(
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: Color(iconColor),
                                            width: 3))),
                                child: Text(title,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 24,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w400,
                                        color: Color(textColor))),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                Flexible(
                    fit: FlexFit.tight,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          description,
                          style: const TextStyle(
                              color: Color(0xFF6e828a),
                              fontSize: 12,
                              letterSpacing: 1.2),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
        Positioned(
          top: -25,
          left: 20,
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Color(iconColor),
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 76, 76, 77),
                  offset: Offset(
                    1.0,
                    1.0,
                  ),
                  blurRadius: 1.0,
                  spreadRadius: 0.5,
                ), //BoxShadow
              ],
            ),
            child: Icon(icon, color: Colors.white, size: 40),
          ),
        ),
      ],
    );
  }
}
