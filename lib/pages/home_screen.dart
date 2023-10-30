import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pruebas/block/counter_bloc/counter_bloc.dart';
import 'package:flutter_pruebas/block/details_screen/details_block.dart';
import 'package:flutter_pruebas/widgets/button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: BlocBuilder<CounterBloc, CounterState>(
          builder: (_, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Home screen ${state.counter}"),
                SizedBox(
                  height: 30,
                ),
                if (state.loading) Text("soy un texto"),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      BlocProvider.of<CounterBloc>(context, listen: false)
                          .add(AddCounter());
                    },
                    icon: Icon(Icons.supervised_user_circle),
                    label: Text("Aumentar 1")),
                ElevatedButton.icon(
                    onPressed: () {
                      BlocProvider.of<CounterBloc>(context, listen: false)
                          .add(DecreaseCounter());
                    },
                    icon: Icon(Icons.supervised_user_circle),
                    label: Text("Restar 1")),
                ElevatedButton.icon(
                    onPressed: () {
                      BlocProvider.of<CounterBloc>(context, listen: false)
                          .add(ShowHideText(elBool: !state.loading));
                    },
                    icon: Icon(Icons.supervised_user_circle),
                    label: Text("Show/Hide Text")),
                Button(route: "/details", label: "details heehee")
              ],
            );
          },
        )),
      ),
    );
  }
}
