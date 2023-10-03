import 'package:flutter/material.dart';

class StudentSearch extends StatefulWidget {
  const StudentSearch({super.key});

  @override
  State<StudentSearch> createState() => _StudentSearchState();
}

class _StudentSearchState extends State<StudentSearch> {
  List<DropdownMenuItem> dropdownItems = const [
    DropdownMenuItem<String>(
      alignment: Alignment.center,
      value: "+1-id",
      child: Text("ID ascending"),
    ),
    DropdownMenuItem<String>(
      alignment: Alignment.center,
      child: Text("ID descending"),
      value: "-1-id",
    ),
    DropdownMenuItem<String>(
      alignment: Alignment.center,
      child: Text("ID "),
      value: "1-id",
    )
  ];
  String value = "+1-id";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Results for ' h '",
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              DropdownButton(
                isDense: true,
                alignment: Alignment.center,
                borderRadius: BorderRadius.circular(4),
                padding: const EdgeInsets.all(6),
                items: dropdownItems,
                onChanged: (value) {
                  setState(() {
                    this.value = value;
                  });
                },
                value: value,
              ),
              SizedBox(
                width: 15,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.file_download_outlined),
                label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Download"),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(0.01 * width),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 220,
                  ),
                  child: Container(
                    child: Card(
                      child: InkWell(
                          borderRadius: BorderRadius.circular(5),
                          onTap: () {},
                          child: width > 780
                              ? Row(
                                  children: [
                                    LeftSideBox(
                                        admissionNumber: 1901025.toString(),
                                        registerID: "  Y19CSE279017",
                                        mobileNumber: "9441719386",
                                        dateofJoining: "20 - 09 - 2019"),
                                    Expanded(
                                        child: Center(
                                      child: ListTile(
                                        title: Center(
                                            child: Text(
                                          "Moganti Mohan Kesava",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        )),
                                        subtitle: Center(
                                          child: Text(
                                              "20/326-5, Brahmapuram, Machilipatnam, AndhraPradesh"),
                                        ),
                                      ),
                                    )),
                                    RightSideBox(
                                        regulation: "R17",
                                        aadhaar: "352215560286",
                                        feeType: "JVD",
                                        stayType: "Day Scholor",
                                        semester: "IV"),
                                  ],
                                )
                              : Column(
                                  children: [
                                    LeftSideBox(
                                        admissionNumber: 1901025.toString(),
                                        registerID: "  Y19CSE279017",
                                        mobileNumber: "9441719386",
                                        dateofJoining: "20 - 09 - 2019"),
                                    Center(
                                      child: ListTile(
                                        title: Center(
                                            child: Text(
                                          "Moganti Mohan Kesava",
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        )),
                                        subtitle: Center(
                                          child: Text(
                                            "20/326-5, Brahmapuram, Machilipatnam, AndhraPradesh",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                    RightSideBox(
                                        regulation: "R17",
                                        aadhaar: "352215560286",
                                        feeType: "JVD",
                                        stayType: "Day Scholor",
                                        semester: "IV"),
                                  ],
                                )),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class LeftSideBox extends StatelessWidget {
  final String admissionNumber;
  final String registerID;
  final String mobileNumber;
  final String dateofJoining;
  const LeftSideBox(
      {super.key,
      required this.admissionNumber,
      required this.registerID,
      required this.mobileNumber,
      required this.dateofJoining});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width > 780
        ? SizedBox(
            height: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LeftSideList(
                  icon: Icons.confirmation_num_rounded,
                  title: admissionNumber,
                  toolTip: "Admission No.",
                ),
                Expanded(child: SizedBox()),
                LeftSideList(
                    icon: Icons.badge_rounded,
                    title: registerID,
                    toolTip: "Register.ID"),
                Expanded(child: SizedBox()),
                LeftSideList(
                    icon: Icons.phone_rounded,
                    title: mobileNumber,
                    toolTip: "Mobile No."),
                Expanded(child: SizedBox()),
                LeftSideList(
                    icon: Icons.event,
                    title: dateofJoining,
                    toolTip: "Date of Joining")
              ],
            ),
          )
        : Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              LeftSideList(
                icon: Icons.confirmation_num_rounded,
                title: admissionNumber,
                toolTip: "Admission No.",
              ),
              LeftSideList(
                  icon: Icons.badge_rounded,
                  title: registerID,
                  toolTip: "Register.ID"),
              LeftSideList(
                  icon: Icons.phone_rounded,
                  title: mobileNumber,
                  toolTip: "Mobile No."),
              LeftSideList(
                  icon: Icons.event,
                  title: dateofJoining,
                  toolTip: "Date of Joining")
            ],
          );
  }
}

class LeftSideList extends StatelessWidget {
  final IconData icon;
  final String title;
  final String toolTip;
  const LeftSideList(
      {super.key,
      required this.icon,
      required this.title,
      required this.toolTip});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Tooltip(
      preferBelow: false,
      message: toolTip,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: width > 780
              ? BorderRadius.only(
                  topLeft: Radius.zero,
                  bottomLeft: Radius.zero,
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30))
              : BorderRadius.circular(0),
          color: Theme.of(context).primaryColorLight,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon),
              SizedBox(width: 10),
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RightSideBox extends StatelessWidget {
  final String regulation;
  final String semester;
  final String aadhaar;
  final String feeType;
  final String stayType;
  const RightSideBox(
      {super.key,
      required this.regulation,
      required this.aadhaar,
      required this.feeType,
      required this.stayType,
      required this.semester});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width > 780
        ? SizedBox(
            height: 220,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RightSideList(
                    title: "$regulation | $semester sem",
                    toolTip: "Regulation"),
                Expanded(
                  child: SizedBox(),
                ),
                RightSideList(title: aadhaar, toolTip: "Aadhaar No."),
                Expanded(child: SizedBox()),
                RightSideList(title: feeType, toolTip: "Fee type"),
                Expanded(child: SizedBox()),
                RightSideList(title: stayType, toolTip: "stay type"),
              ],
            ),
          )
        : Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              RightSideList(
                  title: "$regulation | $semester sem", toolTip: "Regulation"),
              RightSideList(title: aadhaar, toolTip: "Aadhaar No."),
              RightSideList(title: feeType, toolTip: "Fee type"),
              RightSideList(title: stayType, toolTip: "stay type"),
            ],
          );
  }
}

class RightSideList extends StatelessWidget {
  final String title;
  final String toolTip;
  const RightSideList({super.key, required this.title, required this.toolTip});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Tooltip(
      preferBelow: false,
      message: toolTip,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: width > 780
              ? BorderRadius.only(
                  topRight: Radius.zero,
                  bottomRight: Radius.zero,
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30))
              : BorderRadius.circular(0),
          color: Theme.of(context).primaryColorLight,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ),
    );
  }
}
