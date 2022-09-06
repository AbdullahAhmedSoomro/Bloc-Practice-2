part of 'dropdown_bloc.dart';
abstract class DropdownEvent {}

class OnDropdownMenu extends DropdownEvent{
  final Value item;
  OnDropdownMenu(this.item);
}