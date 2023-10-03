import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StudentDetails extends StatefulWidget {
  const StudentDetails({super.key});

  @override
  State<StudentDetails> createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  Map<String, String> details = {
    'Admission No.': "1901024",
    'Date of Joining': "19 - 09 - 2019",
    "Registered ID": "Y19CSE279017",
    "Name": "M.Mohan Kesava",
    "Passout Batch": "2023 - iv sem",
    "Branch": "CSE",
    "Entry type": "Regular",
    "Mobile No.": "9441719386",
    "Parent No": "9866349692",
    "Address": "20/326- 5, brahmapuram",
    "G-mail": "mogantikesava@gmail.com",
    "Aadhaar": "352215560286",
    "Stay Type": "Day Scholor",
    "Fee Status": "paid",
    "Fee Type": "JVD",
    "Gender": "Male",
    "Date-of-Birth": "15 - 07 - 2002",
    "Parent Name": "M. Venkata Subba Rao",
    "Caste": "OC",
    "Sub-Caste": "Kapu",
  };

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(0.01 * width),
        child: Table(
            border: TableBorder.all(color: Theme.of(context).primaryColorLight),
            children: details.entries.map((e) {
              return TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SelectableText(
                    e.key,
                    textAlign: TextAlign.end,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SelectableText(e.value,
                      style: Theme.of(context).textTheme.titleSmall),
                ),
              ]);
            }).toList()),
      ),
    );
  }
}
