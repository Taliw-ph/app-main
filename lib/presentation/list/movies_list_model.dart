import 'package:flutter_movies_app/data/repository/movies_repository.dart';
import 'package:flutter_movies_app/domain/model/movie.dart';
import 'package:logger/logger.dart';

class MoviesListModel {
  final Logger log;
  final MoviesRepository moviesRepo;

  MoviesListModel({required this.log, required this.moviesRepo});

  Future<List<Movie>> fetchPage(int page) async {
    try {
      return await moviesRepo.getUpcomimgMovies(page: page, limit: 10);
    } catch (e) {
      log.e('Error when fetching page $page', e);
      rethrow;
    }
  }

  Future<void> deletePersistedMovies() async {
    try {
      await moviesRepo.deleteAll();
    } catch (e) {
      log.e('Error when deleting movies', e);
      rethrow;
    }
  }

  Future<bool> hasNewData() async {
    try {
      return await moviesRepo.checkNewData();
    } catch (e) {
      log.e('Error when checking for new data', e);
      return true;
    }
  }
}
