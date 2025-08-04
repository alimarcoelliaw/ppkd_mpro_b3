import 'package:flutter/material.dart';

class TugasFlutter2 extends StatelessWidget {
  const TugasFlutter2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.cyan,
        title: Text( 
          'profil lengkap',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: "bunge"
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
            Image.asset("assets/images/avengers.jpg"),
            Center( 
              child: Text( 
                "muhammad ali akbar",
                style: TextStyle(fontSize: 26),
              ),
            ),
            SizedBox(height: 6),
            Row(
              children: [ 
                SizedBox(width: 12),
                Icon(Icons.email),
                SizedBox(width: 12),
                Text("aliakbarmuhammadd@gmail.com", style: TextStyle(fontSize: 20)),
              ], 


            ),
            
            Row( 
              children: [ 
                SizedBox(width: 12,),
                Icon(Icons.phone),
                SizedBox(width:12),
                Text("0859-2355-8293",style: TextStyle(fontSize: 16),)
              ],
            ),
            Row( 
              children: [ 
                SizedBox(width: 12),
                Icon(Icons.person),
                SizedBox(width: 12),
                Text("muhammad ali akbar",style: TextStyle(fontSize: 16),
                )
              ],
            )
          ],
        ),),
    );
  }
}