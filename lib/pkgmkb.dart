library pkgmkb;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pkgmkb/reportedprogramspage/cubit/DashCubit.dart';
import 'package:pkgmkb/reportedprogramspage/screens/Dashboard.dart';

class MyMannKiBaat extends StatelessWidget {
  final String token;

  const MyMannKiBaat({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return DashCubit(token);
      },
      child: TextButton(
          onPressed: () {
            DashCubit(token);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
          },
          child: Text("Open MannKiBaat")),
    );
  }
}
