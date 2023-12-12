import 'package:flutter/material.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class TeamMakerPage extends StatelessWidget {
  

  BuildContext? get context => null;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(20),
            children: <Widget>[
              Image.asset("assets/imagens/labmaker-navbar2.jpg"),
              SizedBox(height: 10),
              Container(height: 1, color: Colors.grey[300]),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Equipe Maker',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green[700]),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              buildTeamMember('assets/imagens/PLemos.jpg', 'Pedro', 'Professor...', 'Professor EBTT do IFSertãoPE - Campus Salgueiro.'),
              SizedBox(height: 10),
              buildTeamMember('assets/imagens/vicCarlos.jpg', 'Victor Carlos', 'Desenvolvedor Frontend', 'Graduando em Tecnologia em Sistemas para Internet (IFSertãoPE), Técnico em Informática (IFSertãoPE).'),
              SizedBox(height: 10),
              buildTeamMember('assets/imagens/viniEufrazio.jpg', 'Vinicio Eufrazio', 'Desenvolvedor Backend', 'Graduando em Tecnologia em Sistemas para Internet (IFSertãoPE), Técnico em Informática (IFSertãoPE), Administrador de sites na K1Digital.'),
            ],
          ),
        ),
      );

  int selectedIndex = 0;

 
  Widget buildTeamMember(String imagePath, String name, String role, String description) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(imagePath),
            ),
            SizedBox(height: 10),
            Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              role,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 5),
            Text(
              description,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
      
        void setState(Null Function() param0) {}
}
