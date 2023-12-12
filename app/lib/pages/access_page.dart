import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccessPage extends StatefulWidget {
  const AccessPage({Key? key}) : super(key: key);

  @override
  State<AccessPage> createState() => _AccessPageState();
}

class _AccessPageState extends State<AccessPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
            children: [
              SizedBox(height: 35),
              Center(
                child: Image.asset("assets/imagens/labmaker-navbar2.jpg"),
              ),
              Divider(
                height: 1,
                color: Colors.grey,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Acessos ao LabMaker',
                    style: GoogleFonts.oswald(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 61, 96, 47),
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Acessos('assets/imagens/leoCampello.jpg',"Leonardo Campello","Professor","Saiu","13:56"),
              Acessos('assets/imagens/viniEufrazio.jpg',"Vinicio Eufrazio","Bolsista","Saiu","13:53"),
              Acessos('assets/imagens/vicCarlos.jpg',"Álvaro Victor","Bolsista","Saiu","13:53"),
              Acessos('assets/imagens/leoCampello.jpg',"Leonardo Campello","Professor","Entrou","07:53"),
              Acessos('assets/imagens/viniEufrazio.jpg',"Vinicio Eufrazio","Bolsista","Entrou","07:45"),
              Acessos('assets/imagens/vicCarlos.jpg',"Álvaro Victor","Bolsista","Entrou","07:45"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Acessos(
  String imagem,
  String nome,
  String vinculo,
  String estado,
  String hora,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center, // Centraliza horizontalmente
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center, // Centraliza horizontalmente
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imagem),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$nome",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "$vinculo",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.grey
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          estado,
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                            color: estado == "Entrou" ? Colors.green : Colors.red,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'às $hora',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
         Align(
  alignment: Alignment.topRight,
  child: ElevatedButton(
    onPressed: () {
      // Adicione a ação desejada para o botão
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        const Color.fromARGB(255, 24, 93, 26),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    ),
    child: Text(
      'Ver mais',
      style: TextStyle(
        fontSize: 13.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  ),
),

          SizedBox(width: 10,),
        ],
      ),
      SizedBox(height: 10),
      Divider(
        height: 1,
        color: Colors.grey,
      ),
      SizedBox(height: 5,)
    ],
  );
}
