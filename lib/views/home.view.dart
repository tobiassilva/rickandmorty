import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rickandmorty/views/cabecalho.view.dart';

import '../view-models/jsonlists.viewmodel.dart';

class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  late JsonListViewModel _jsonListViewModel;
      ScrollController _scrollController = ScrollController();

  @override
  void didChangeDependencies() {
    _jsonListViewModel = Provider.of<JsonListViewModel>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(height: 50,),
              CabecalhoView().appBar(),
              _listaPersons(),
            ],
          ),
        ),
      ),
      
    );
  }

  Widget _listaPersons(){
    return ListView.builder(
      itemCount: _jsonListViewModel.personList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, _index){
        var _jsonPerson = _jsonListViewModel.personList[_index];
        print("_jsonPerson ${_jsonPerson.image}");
        return Container(
          margin: const EdgeInsets.only(top: 15, bottom: 15),
          height: MediaQuery.of(context).size.width*0.8,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Colors.white,
            image: DecorationImage(image: NetworkImage("${_jsonPerson.image}"),fit: BoxFit.cover)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //Image.network("${_jsonPerson.image}"),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    //bottomLeft: Radius.circular(25),
                    //bottomRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                    //bottomLeft: Radius.circular(25)
                    ),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${_jsonPerson.name}",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "${_jsonPerson.species}",
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "${_jsonPerson.gender}",
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}