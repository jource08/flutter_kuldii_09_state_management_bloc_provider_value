import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kuldii_09_state_management_bloc_provider_value/bloc/counter.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    MyCounter counter = context.read<MyCounter>();
    return Scaffold(
      appBar: AppBar(title: const Text("OTHER PAGE")),
      body: BlocBuilder(
          bloc: counter,
          builder: (context, state) {
            return Center(
                child: Text("$state", style: const TextStyle(fontSize: 50)));
          }),
    );
  }
}
