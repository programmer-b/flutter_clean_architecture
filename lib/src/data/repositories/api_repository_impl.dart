import 'package:flutter_clean_architecture/src/domain/entities/quote_entity.dart';

import 'package:flutter_clean_architecture/src/core/error/failures.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repository/api_repository.dart';
import '../datasources/remote/api_remote_datasource.dart';

class ApiRepositoryImpl implements ApiRepository {
  final ApiRemoteDataSource apiRemoteDataSource;
  ApiRepositoryImpl(this.apiRemoteDataSource);

  @override
  Future<Either<Failure, QuoteEntity>> getRandomMovieQuote() async {
    final randomQuote = await apiRemoteDataSource.getRandomMovieQuote();
    return Right(randomQuote);
  } 
} 
