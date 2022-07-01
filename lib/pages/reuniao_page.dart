import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';


class ReuniaoPage extends StatefulWidget {
  const ReuniaoPage({ Key? key }) : super(key: key);

  @override
  State<ReuniaoPage> createState() => _ReuniaoPageState();
}

class _ReuniaoPageState extends State<ReuniaoPage> {
  // Instancia do Firestore
  FirebaseFirestore db = FirebaseFirestore.instance;

  TextEditingController _textController = TextEditingController();
  List<String> listReunioes = [];

  @override
  void initState() {
    // Atualização em tempo real
    db.collection('reunioes').snapshots().listen((query) {
      listReunioes = [];
      query.docs.forEach((doc) {
        setState(() {
          listReunioes.add(doc.get({'id', 'descricao'}));
        });
      });
    });
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Cloud Firestore"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => delete(),
        child: const Text("X", style: TextStyle(fontSize: 30)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Vamos gravar um registro na nuvem?",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: "Insira uma descrição",
              ),
            ),
            ElevatedButton(
              onPressed: sendData,
              child: Text("Enviar"),
            ),
            const SizedBox(
              height: 16,
            ),
            (listReunioes.length == 0)
              ? const Text(
                "Nenhuma reunião registrada",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              )
              : Column(
                children: [
                  for(String reuniao in listReunioes) Text(reuniao)
                ],
              )
          ],
        ),
      ),
    );
  }

  void delete() async {
    
  }

  void sendData() {
    String id = Uuid().v1();
    db.collection('reunioes').doc(id).set({
      'id': id,
      'descricao': _textController.text,
    });

    _textController.text = '';
  }
}