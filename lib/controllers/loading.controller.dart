
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rickandmorty/models/person.model.dart';
import 'package:rickandmorty/repositories/person.repository.dart';
import 'package:rickandmorty/view-models/jsonlists.viewmodel.dart';
import 'package:rickandmorty/views/home.view.dart';


class LoadingController {
  Future createPerson(context) async {
  final jsonListViewModel = Provider.of<JsonListViewModel>(context);

    var _listCaracteres = await PersonRepository().getPerson();

    if(_listCaracteres == null) return;
    print("_listCaracteres: $_listCaracteres");

    jsonListViewModel.personList = List<Person>.from(_listCaracteres.map((_val) => Person.fromJson(_val)));
    //jsonListViewModel.personList = _listCaracteres.map((_val) => Person.fromJson(_val));
    print("jsonListViewModel.personList: ${jsonListViewModel.personList[0].name}");

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HomeView())
    );
  }
}