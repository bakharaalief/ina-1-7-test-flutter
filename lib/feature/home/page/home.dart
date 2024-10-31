import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_satu_tujuh/feature/home/bloc/counter_bloc.dart';
import 'package:test_satu_tujuh/feature/home/bloc/counter_event.dart';
import 'package:test_satu_tujuh/feature/home/bloc/counter_state.dart';
import 'package:test_satu_tujuh/feature/home/widget/Input_section.dart';
import 'package:test_satu_tujuh/feature/home/widget/button_section.dart';
import 'package:test_satu_tujuh/feature/home/widget/result_section.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _inputNumber = 0;
  CounterBloc _counterBloc = CounterBloc();

  @override
  void dispose() {
    _counterBloc.close();
    super.dispose();
  }

  void _handleOnChange(String input) {
    setState(() {
      _inputNumber = int.parse(input);
    });
  }

  void _handleOnPressBtn(String input) {
    if (input == "1") {
      _counterBloc.add(CounterOneEvent(_inputNumber));
    } else if (input == "2") {
      _counterBloc.add(CounterTwoEvent(_inputNumber));
    } else if (input == "3") {
      _counterBloc.add(CounterThreeEvent(_inputNumber));
    } else {
      _counterBloc.add(CounterFourEvent(_inputNumber));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => _counterBloc,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Input Number"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputSection(onChanged: _handleOnChange),
              const SizedBox(
                height: 40,
              ),
              ButtonSection(onPress: _handleOnPressBtn),
              const SizedBox(
                height: 40,
              ),
              BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
                if (state is CounterResultState) {
                  return ResultSection(result: state.result);
                }
                return const Center(
                  child: Text("masukkan angka"),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
