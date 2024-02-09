import 'package:flutter/material.dart';
import 'package:mechanics_app/Model/mechanicModel.dart';
import 'package:mechanics_app/Service/mechanicService.dart';

class viewpage extends StatefulWidget {
  const viewpage({super.key});

  @override
  State<viewpage> createState() => _viewpageState();
}

class _viewpageState extends State<viewpage> {
  Future<List<Mechanic>>? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=MechanicApiService().getMechanic();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.lightBlue,
        title: Text("View mechanics",style: TextStyle(color: Colors.white),),),
      body: FutureBuilder(
          future: data,
          builder: (context,snapshot){
            if(snapshot.hasData && snapshot.data!.isNotEmpty){
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("Name : "+snapshot.data![index].name),
                            subtitle: Text("Id : "+snapshot.data![index].empId+"\nLocation : "+snapshot.data![index].location
                                +"\nExperience "+snapshot.data![index].experience),
                          )
                        ],
                      ),
                    );
                  });
            }
            else{
              return CircularProgressIndicator();
            }
          }),
      ),
    );
  }
}
