import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/myModel.dart';
import '../../resources/api_repository.dart';

part 'travel_event.dart';
part 'travel_state.dart';

class TravelBloc extends Bloc<TravelEvent, TravelState> {
  TravelBloc() : super(TravelInitial()) {
    final ApiRepository _apiRepository = ApiRepository();
    on<GetTravelList>((event, emit) async {
      try {
        emit(TravelLoading());
        final mList = await _apiRepository.fetchdata();
        emit(TravelLoaded(mList));
        if (mList.error != null) {
          emit(TravelError(mList.error));
        }
      } on NetworkError {
        emit(const TravelError("Failed to fetch data. is your device online?"));
      }
    });
  }
}
