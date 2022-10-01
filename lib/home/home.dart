import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kuldii_09_state_management_bloc_provider_value/bloc/counter.dart';
import 'package:flutter_kuldii_09_state_management_bloc_provider_value/pages/other.dart';

import '../widget/data_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyCounter mycounter = context.read<MyCounter>();
    return Scaffold(
      appBar: AppBar(title: const Text("DEPENDENCY INJECTION")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) => BlocProvider.value(
                      value: mycounter,
                      child: const OtherPage(),
                    )),
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    BlocProvider.of<MyCounter>(context).decrement();
                  },
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child:
                        Center(child: Icon(Icons.remove, color: Colors.white)),
                  ),
                ),
              ),
              const DataWidget(),
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    // BlocProvider.of<MyCounter>(context).increment();
                    context.read<MyCounter>().increment();
                  },
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Center(child: Icon(Icons.add, color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
