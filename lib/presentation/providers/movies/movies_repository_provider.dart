import 'package:cinemapedia/infrastructure/datasources/the_moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/movie_repository_implementaion.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// repositorio inmutable, solo provee informacion
final movieRepositoryProvider = Provider((ref) {
  // aqui es donde despues podemos cambiar a nuestros datasources
  return MovieRepositoryImplementation(TheMovieDbDatasource());
});
