import 'package:flutter/material.dart';
import 'package:mechanics_app/pages/viewPage.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Mechanic App",style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:50,
                width:200,
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>viewpage()));
                    }, child: Text("View Mechanics"))),
          ],
        ),
      ),
    );
  }
}
