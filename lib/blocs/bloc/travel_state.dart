part of 'travel_bloc.dart';

abstract class TravelState extends Equatable {
  const TravelState();

  @override
  List<Object> get props => [];
}

class TravelInitial extends TravelState {}

class TravelLoading extends TravelState {}

class TravelLoaded extends TravelState {
  final MyModel myModel;
  const TravelLoaded(this.myModel);
}

class TravelError extends TravelState {
  final String? message;
  const TravelError(this.message);
}
