import 'package:flutter/material.dart';



class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  List a = [];

  callApi(){
  // List b=  _dio.get('');
   //a.addAll(b);
  }

  @override
  void initState() {
    if(!scrollController.hasClients) return;
    if(scrollController.position.maxScrollExtent == scrollController.position.pixels)
      {
        callApi();
      }
    super.initState();
  }


  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {


    return ListView.builder(
        controller: scrollController,
        itemCount: a.length,
        itemBuilder: (context,index){
      return ListTile(
        tileColor:a[index],
      );
    });
  }
}
