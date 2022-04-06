
import 'package:flutter_test/flutter_test.dart';
import 'package:rickandmorty/repositories/person.repository.dart';

void main() {
  test("Teste de Requisição Characters", () async {
  final _charactersRepository = PersonRepository();
    expect(await _charactersRepository.getPerson(), isNotNull);
  });
}