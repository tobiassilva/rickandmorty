
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rickandmorty/controllers/loading.controller.dart';

class MockBuildContext extends Mock implements BuildContext{} 

void main() {

  MockBuildContext _mockContext = MockBuildContext();
  final _loadingController = LoadingController();

  /*setUp(() {
    _mockContext = MockBuildContext();
  });*/
  test("Requisita dados Characters e monta Lista", () async {
    expect(await _loadingController.createPerson(_mockContext), true);
  }, skip: true);
}