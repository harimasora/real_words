import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_social/src/models/real_word.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({required List<RealWord> words, @Default('') String currentWord}) = _HomeState;
}
