

void main() {
  final List<List<String>> navigationItems = [
    ['Home', "Icon(Icons.home_rounded)", "/student"],
    ['Student', " Icon(Icons.person_search)", "/student/search"],
    ['Batch', " Icon(Icons.people_rounded)", "/student/batch"],
    ['Branch', " Icon(Icons.category_rounded)", "/student/branch"],
    ['Regulation', " Icon(Icons.book_rounded)", "/student/regulation"],
    ['Gender', " Icon(Icons.transgender_rounded)", "/student"],
    ['Scholarship', " Icon(Icons.school_rounded)", "/student"],
    ['Caste', " Icon(Icons.groups_3_rounded)", "/student/caste"],
    ['Upload', " Icon(Icons.file_upload_rounded)", "#"],
    ["Promote", " Icon(Icons.celebration)", "#"],
    ['Logout', " Icon(Icons.logout_rounded)", "/student"]
  ];

  List<String> list = navigationItems.map((e) {
    return "NavigationItem(icon: ${e[1]}, name: \"${e[0]}\", path: \"${e[2]}\")";
  }).toList();
  print(list);
}
