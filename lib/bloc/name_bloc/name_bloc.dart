import 'package:flutter_bloc/flutter_bloc.dart';
import 'name_event.dart';
import 'name_state.dart';

class NameBloc extends Bloc<NameEvent, NameState> {
  NameBloc() : super(const NameState('')) {
    on<UpdateName>((event, emit) {
      emit(NameState(event.name));
    });
  }
}
