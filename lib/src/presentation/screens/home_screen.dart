import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/provider/global_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late GlobalProvider globalProvider;
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      globalProvider = GlobalProvider.of(context, listen: false);
      globalProvider.getMovieQuote();
    });
  }

  Future getMovieQuote() async {
    globalProvider.getMovieQuote();
  }

  @override
  Widget build(BuildContext context) {
    final randomQuote = context.watch<GlobalProvider>().randomQuote;
    return Scaffold(
      appBar: AppBar(title: const Text("Random movie quotes")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                randomQuote.quote,
                textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 15,),
            Text('~ ${randomQuote.role}'),
            const SizedBox(height: 15,),
            ElevatedButton(
                onPressed: getMovieQuote, child: const Text('Get Quote'))
          ],
        ),
      ),
    );
  }
}
