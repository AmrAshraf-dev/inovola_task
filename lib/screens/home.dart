import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/bloc/travel_bloc.dart';
import 'package:inovola_task/widgets/build_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TravelBloc _newsBloc = TravelBloc();
  @override
  void initState() {
    _newsBloc.add(GetTravelList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreen(),
    );
  }

  Widget _buildScreen() {
    return BlocProvider(
      create: (_) => _newsBloc,
      child: BlocListener<TravelBloc, TravelState>(
        listener: (context, state) {
          if (state is TravelError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message!),
              ),
            );
          }
        },
        child: BlocBuilder<TravelBloc, TravelState>(
          builder: (context, state) {
            if (state is TravelInitial) {
              return _buildLoading();
            } else if (state is TravelLoading) {
              return _buildLoading();
            } else if (state is TravelLoaded) {
              return buildData(context, state.myModel);
            } else if (state is TravelError) {
              return Container();
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());
}
