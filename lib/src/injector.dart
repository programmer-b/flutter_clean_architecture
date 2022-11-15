import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/data/datasources/remote/api_remote_datasource.dart';
import 'package:flutter_clean_architecture/src/data/repositories/api_repository_impl.dart';
import 'package:flutter_clean_architecture/src/domain/usecases/get_random_movie_quote.dart';
import 'package:flutter_clean_architecture/src/presentation/provider/global_provider.dart';
import 'package:provider/provider.dart';

import 'package:http/http.dart' as http;

class Injector extends StatelessWidget {
  const Injector({super.key, this.router});

  final Widget? router;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => GlobalProvider(
                getRandomMovieQuote: GetRandomMovieQuote(ApiRepositoryImpl(
                    ApiRemoteDataSourceImpl(http.Client()))))),
      ],
      child: router,
    );
  }
}
