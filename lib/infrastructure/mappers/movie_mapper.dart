import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/the_moviedb/movie_the_moviedb.dart';

class MovieMapper {
  static Movie movieDbToEntity(MovieFromMovieDb movieDb) => Movie(
        adult: movieDb.adult,
        backdropPath: (movieDb.backdropPath != '')
            ? 'https://image.tmdb.org/t/p/w500/${movieDb.backdropPath}'
            : 'https://cdn.shopify.com/s/files/1/1993/5539/products/noposters_1800x1800.jpg?v=1603727888',
        genreIds: movieDb.genreIds.map((movie) => movie.toString()).toList(),
        id: movieDb.id,
        originalLanguage: movieDb.originalLanguage,
        originalTitle: movieDb.originalTitle,
        overview: movieDb.overview,
        popularity: movieDb.popularity,
        posterPath: (movieDb.posterPath != '')
            ? 'https://image.tmdb.org/t/p/w500/${movieDb.posterPath}'
            : 'no-poster',
        releaseDate: movieDb.releaseDate,
        title: movieDb.title,
        video: movieDb.video,
        voteAverage: movieDb.voteAverage,
        voteCount: movieDb.voteCount,
      );
}
