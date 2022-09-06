part of 'dropdown_bloc.dart';
enum Value { expnse, income, salary }

class DropdownState {
  final Value selectedValue;
  DropdownState({required this.selectedValue});

  factory DropdownState.initial() {
    return DropdownState(selectedValue: Value.expnse);
  }

  DropdownState copyWith({Value? selectedValue}) {
    return DropdownState(selectedValue: selectedValue ?? this.selectedValue);
  }
}
