import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_index_state.dart';

class NavigationIndexCubit extends Cubit<NavigationIndexState> {
  NavigationIndexCubit() : super(NavigationIndex(index: 0));

  void change(int value) {
    emit(NavigationIndex(index: value));
  }

  @override
  void onChange(Change<NavigationIndexState> change) {
    // TODO: implement onChange
    print(change);
    super.onChange(change);
     
  }
  
 
}
