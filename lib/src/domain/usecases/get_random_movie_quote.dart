import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/src/domain/repository/api_repository.dart';

import '../../core/error/failures.dart';
import '../entities/quote_entity.dart';

class GetRandomMovieQuote {
  final ApiRepository repository;

  GetRandomMovieQuote(this.repository);

  Future<Either<Failure, QuoteEntity>> execute() async =>
      await repository.getRandomMovieQuote();
}
