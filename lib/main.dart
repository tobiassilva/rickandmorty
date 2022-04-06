import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rickandmorty/view-models/jsonlists.viewmodel.dart';
import 'package:rickandmorty/views/loading.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => JsonListViewModel())
      ],
      child: MaterialApp(
       debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoadingView(),
      ),
    );
  }
}
