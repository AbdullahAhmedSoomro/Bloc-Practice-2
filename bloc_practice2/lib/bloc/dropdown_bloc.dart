import 'package:bloc/bloc.dart';
part 'dropdown_event.dart';
part 'dropdown_state.dart';

class DropdownBloc extends Bloc<OnDropdownMenu, DropdownState> {
  DropdownBloc() : super(DropdownState.initial()) {
    on<OnDropdownMenu>((event, emit) {
      emit(state.copyWith(selectedValue: event.item));
    });
  }
}
