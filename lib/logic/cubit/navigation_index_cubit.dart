import 'package:bloc/bloc.dart';
import 'package:e_krucet/data/models/navigation_item_model.dart';
import 'package:flutter/material.dart';

part 'navigation_index_state.dart';

class NavigationIndexCubit extends Cubit<NavigationIndexState> {
  NavigationIndexCubit() : super(NavigationIndex(index: 0));

  Map<String, NavigationItem> get navigationItems {
    return {
      "home": NavigationItem(
          icon: Icon(Icons.home_rounded),
          name: "Home",
          path: "/student/home",
          index: 0),
      "student_search": NavigationItem(
          icon: Icon(Icons.person_search),
          name: "Student",
          path: "/student/search",
          index: 1),
      "batch": NavigationItem(
          icon: Icon(Icons.people_rounded),
          name: "Batch",
          path: "/student/batch",
          index: 2),
      "branch": NavigationItem(
          icon: Icon(Icons.category_rounded),
          name: "Branch",
          path: "/student/branch",
          index: 3),
      "regulation": NavigationItem(
          icon: Icon(Icons.book_rounded),
          name: "Regulation",
          path: "/student/regulation",
          index: 4),
      "gender": NavigationItem(
          icon: Icon(Icons.transgender_rounded),
          name: "Gender",
          path: "/student",
          index: 5),
      "scholarship": NavigationItem(
          icon: Icon(Icons.school_rounded),
          name: "Scholarship",
          path: "/student",
          index: 6),
      "caste": NavigationItem(
          icon: Icon(Icons.groups_3_rounded),
          name: "Caste",
          path: "/student/caste",
          index: 7),
      "upload": NavigationItem(
          icon: Icon(Icons.file_upload_rounded),
          name: "Upload",
          path: "#",
          index: 8),
      "promote": NavigationItem(
          icon: Icon(Icons.celebration), name: "Promote", path: "#", index: 9),
      "logout": NavigationItem(
          icon: Icon(Icons.logout_rounded),
          name: "Logout",
          path: "/student",
          index: 10)
    };
  }

  void change(int value) {
    emit(NavigationIndex(index: value));
  }

  @override
  void onChange(Change<NavigationIndexState> change) {
    // TODO: implement onChange

    super.onChange(change);
    print(change);
  }
}
