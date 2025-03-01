part of 'navigation_cubit.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    @Default(0) int currentIndex,
  }) = _NavigationState;
  
}