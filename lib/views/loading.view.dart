import 'package:flutter/material.dart';

import '../controllers/loading.controller.dart';

class LoadingView extends StatefulWidget {
  const LoadingView({ Key? key }) : super(key: key);

  @override
  State<LoadingView> createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView> {
  var _loadingController = LoadingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    _loadingController.createPerson(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.black,
          ),
        ),
      ),
    );
  }
}