

import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:task/cubit/counter_cubit/counter_cubit.dart";
import "package:task/cubit/counter_cubit/counter_state.dart";
import "package:task/models/custome_container.dart";

class CustomeRow extends StatelessWidget {
  final Color my_color;
  final String title;

  const CustomeRow(this.my_color, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
                builder: (BuildContext context, CounterState state) {
              return Box(
                high: 65,
                wid: 60,
                chil: CounterCubit.get(context).counter,
                my_color: my_color,
                font: 30,
              );
            }),
            Box(
              high: 70,
              wid: 200,
              chil: title,
              my_color: my_color,
              font: 24,
            ),
            BlocBuilder<CounterCubit, CounterState>(
                builder: (BuildContext context, CounterState state) {
              return CircleAvatar(
                maxRadius: 30,
                backgroundColor: my_color,
                child: IconButton(
                  icon: const Icon(
                    Icons.add,
                    size: 30,
                  ),
                  onPressed: () {
                    CounterCubit.get(context).addone();
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
