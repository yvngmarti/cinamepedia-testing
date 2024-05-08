import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'movies_providers.dart';

final initialLoadingProvider = Provider<bool>((ref) {
  // final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider).isEmpty;
  // final popularMovies = ref.watch(popularMoviesProvider).isEmpty;
  // final topRatedMovies = ref.watch(topRatedMoviesProvider).isEmpty;
  // final upcomingMovies = ref.watch(upcomingMoviesProvider).isEmpty;

  final step1 = ref.watch(nowPlayingMoviesProvider).isEmpty;
  final step2 = ref.watch(popularMoviesProvider).isEmpty;
  final step3 = ref.watch(topRatedMoviesProvider).isEmpty;
  final step4 = ref.watch(upcomingMoviesProvider).isEmpty;

  if (step1 || step2 || step3 || step4) return true;
  // terminamos de cargar toda la data de los providers
  return false;
});
