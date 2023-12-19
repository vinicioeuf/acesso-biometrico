import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Lista_Validacoes extends StatefulWidget {
  const Lista_Validacoes({Key? key}) : super(key: key);

  @override
  State<Lista_Validacoes> createState() => _ListaValidacoes();
}

class _ListaValidacoes extends State<Lista_Validacoes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "VALIDAÇÕES",
                  style: TextStyle(
                    color: Colors.green[800],
                    fontFamily: 'oswald',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                alignment: Alignment.center,
                width: 0.9 * MediaQuery.of(context).size.width,
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("validações")
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text("Erro: ${snapshot.error}");
                    }
                    else {
                      var docs = snapshot.data!.docs;
                      return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(docs[index]['email'].toString(), style: TextStyle(color: Colors.black),),
                          );
                        },
                      );
                      
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
