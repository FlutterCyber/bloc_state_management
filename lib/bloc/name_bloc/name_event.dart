import 'package:equatable/equatable.dart';

abstract class NameEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class UpdateName extends NameEvent {
  final String name;

  UpdateName(this.name);

  @override
  List<Object> get props => [name];
}
