part of 'travel_bloc.dart';

abstract class TravelEvent extends Equatable {
  const TravelEvent();

  @override
  List<Object> get props => [];
}

class GetTravelList extends TravelEvent {}
