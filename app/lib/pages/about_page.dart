import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AboutPage extends StatelessWidget {
  
  int selectedIndex = 0;

  AboutPage({super.key});
  
  BuildContext? get context => null;

  Widget buildIconContainer(IconData icon, int index) {
    bool isSelected = selectedIndex == index;

    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });

          if (index == 2) {
            Navigator.push(
              context!,
              MaterialPageRoute(builder: (context) => AboutPage()),
            );
          }
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? Colors.green[700] : Colors.white,
          ),
          child: Icon(
            icon,
            color: isSelected ? Colors.white : Colors.green[700],
            size: 50,
          ),
        ),
      ),
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset("assets/imagens/labmaker-navbar2.jpg"),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Sobre o LabMaker',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ),
          SizedBox(height: 20),
          Image.asset("assets/imagens/labMaker.jpg"),
          SizedBox(height: 20),
          const Text(
            'O Laboratório Maker é um espaço inovador e inspirador, projetado para promover a aprendizagem e a criatividade dos alunos. Equipado com tecnologias de ponta, o laboratório oferece aos estudantes a oportunidade de explorar e experimentar diversas áreas, como programação, robótica, eletrônica e design.',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Text(
                      'Equipe de Desenvolvimento',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    const SizedBox(height: 10),
                    AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset('assets/imagens/leoCampello.jpg'),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    const Text(
                      'Equipe LabMaker',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    const SizedBox(height: 10),
                    AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset('assets/imagens/vicCarlos.jpg'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset('assets/imagens/viniEufrazio.jpg'),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset('assets/imagens/PLemos.jpg'),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            height: 1,
            color: Colors.black,
          ),
          BottomAppBar(
            child: Container(
              height: 50,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildIconContainer(Icons.explore, 0),
                  buildIconContainer(Icons.person, 1),
                  buildIconContainer(Icons.help_outline, 2),
                ],
              ),
            ),
            elevation: 1,
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }
  
  void setState(Null Function() param0) {}
}
