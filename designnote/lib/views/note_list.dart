//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:designnote/views/note.dart';

class NoteList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design Notes'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
        return GestureDetector(
          onTap: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => Note(NoteMode.Editin))
            );
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 30, left: 13.0, right: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                
                _NoteTitle(),
                Container(height:  4,),
              _NoteText(),
            ],
            ),
            ),
          ),
        );
        }
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => Note(NoteMode.Adding))
            );
          },
          child: Icon(Icons.add),
          ),
    );
  }
}

class _NoteTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
        'Some title',
        style: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.bold
      ), 
    );
  }
}

class _NoteText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
                  'Dies ist die Beschreibung oder jeglicher anderer Text, welcher zu diesem Entwicklungszeitpunkt nicht durchdacht wurde und nur zum Test von langen Texten dient und dessen Verhalten in der App. Schönen Tag noch!',
                  style: TextStyle(
                    color: Colors.grey.shade600
                  ),
                  // Setzt die maximale Textlänge auf 2 Zeilen
                  maxLines: 2,
                  /* Macht dass diese 3 punkte "..." am Ende einer Zeile stehen
                  um dem User zu vermitteln "Der Text endet hier nicht!" */
                  overflow: TextOverflow.ellipsis,
    );
  }
}