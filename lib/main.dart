import 'package:flutter/material.dart';
import 'package:sorealtravel_app/screens/home_page.dart';




void main()  {

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF4E7D0)
      ),
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Prototype App'),
        ),
        body: Center(
          child: Column(
          children: [
          formSection(),
          Text("Sign up", style: TextStyle(fontStyle: FontStyle.italic)),


        ]),
        ),
      ),
    );
  }
}

class formSection extends StatelessWidget{
  final String username ="";
  final String password="";

  const formSection({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo.png", width: 400, height: 400),
          Text(
            'Username',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
              filled: true,
              fillColor: Colors.white,

            ),
            controller: TextEditingController(text: username),

          ),
          SizedBox(height: 10),
          Text(
            'Password',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder( borderRadius: BorderRadius.circular(20.0),),
              filled: true,
              fillColor: Colors.white,

            ),

            obscureText: true,
            controller: TextEditingController(text: password),
          ),SizedBox(height: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              onPressed: (){
                print("The button is pressed");
              }
              , child: Text('Submit')),

          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          }, child: const Text('Go to Home page'),

          )


        ],
      ),
    );
  }

}



class ImageSection extends StatelessWidget{
  const ImageSection ({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.network(image, width: 300, height: 300, fit: BoxFit.cover);
  }}



//project console: https://console.firebase.google.com/project/sorealtravel-7040d/overview
//Hosting URL: https://sorealtravel-7040d.web.app
