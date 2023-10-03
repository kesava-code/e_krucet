part of 'navigation_index_cubit.dart';

@immutable
abstract class NavigationIndexState {}

class NavigationIndex extends NavigationIndexState {
  final int index;
  NavigationIndex({required this.index});
  @override
  String toString() {
    // TODO: implement toString

    return "value of index: $index";
  }
}
