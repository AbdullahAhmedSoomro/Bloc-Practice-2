import 'package:bloc_practice2/bloc/dropdown_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DropdownBloc, DropdownState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Dropdown"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<Value>(
                  value: state.selectedValue,
                  items: Value.values.map((items) {
                    return DropdownMenuItem<Value>(
                      value: items,
                      child: Text(items.name),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    context.read<DropdownBloc>().add(OnDropdownMenu(newValue!));
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
