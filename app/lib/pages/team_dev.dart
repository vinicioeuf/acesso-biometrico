import 'package:app/pages/about_page.dart';
import 'package:app/pages/home_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class TeamDevPage extends StatelessWidget {
  

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
                  'Equipe de Desenvolvimento',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green[700]),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              buildTeamMember('assets/imagens/leoCampello.jpg', 'Leonardo Campello', 'Desenvolvedor Full Stack Sênior', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl ac aliquet ultrices, nunc nunc tincidunt nunc, vitae tincidunt nunc nunc auctor nunc.'),
              SizedBox(height: 10),
              buildTeamMember('assets/imagens/vicCarlos.jpg', 'Victor Carlos', 'Desenvolvedor Frontend', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl ac aliquet ultrices, nunc nunc tincidunt nunc, vitae tincidunt nunc nunc auctor nunc.'),
              SizedBox(height: 10),
              buildTeamMember('assets/imagens/viniEufrazio.jpg', 'Vinicio Eufrazio', 'Desenvolvedor Backend', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl ac aliquet ultrices, nunc nunc tincidunt nunc, vitae tincidunt nunc nunc auctor nunc.'),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
            if (index == 0) {
              index = 0;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            } else if (index == 1) {
              // Defina a rota para a página de perfil
            } else if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explorar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help_outline),
              label: 'Sobre',
            ),
          ],
          selectedItemColor: Color.fromARGB(255, 87, 85, 85), // Define a cor dos ícones selecionados
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