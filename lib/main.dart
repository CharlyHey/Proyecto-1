import 'package:flutter/material.dart';
import 'comidas.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final images = [
        {'image':'assets/img/padthai.png', 'title': 'image'},
        {'image':'assets/img/kuayteowluisuan.png', 'title': 'image'},
        {'image':'assets/img/tomyumsoup.png', 'title': 'image'},
        {'image':'assets/img/tomkhakai.png', 'title': 'image'},
        {'image':'assets/img/kaipadmedmamuang.png', 'title': 'image'},
        {'image':'assets/img/massamancurry.png', 'title': 'image'},
        {'image':'assets/img/sumtom.png', 'title': 'image'},
        {'image':'assets/img/khaoniaomuanmuang.png', 'title': 'image'},
        {'image':'assets/img/kluaybuatchi.png', 'title': 'image'},
        {'image':'assets/img/heladodurian.png', 'title': 'image'},
        {'image':'assets/img/sanaychan.png', 'title': 'image'},
        {'image':'assets/img/khanomchan.png', 'title': 'image'},
        {'image':'assets/img/nammaphrao.png', 'title': 'image'},
        {'image':'assets/img/padthai.png', 'title': 'image'},
        {'image':'assets/img/padthai.png', 'title': 'image'},
      ];
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Comida tailandesa',
        theme: new ThemeData(
        primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
                title: Text('Comida tailandes')
            ),
            body: new ListView(
                children: comidas.map(_buildItem).toList(),
            )
        )
    );
  }
}

// ignore: non_constant_identifier_names
Widget _buildItem(Comida) {

  var comida;
  var i;
  var images;
  return new ListTile(
      Image.asset(
        images[i]['image'],
        width: 200,),
      Text(images[i]['title'])
      title: new Text(comida.nombre),
  subtitle: new Text('Descripcion: ${comida.descripcion}'),
  leading: new Icon(Icons.food_bank),
  onTap: (){
        print(comida.nombre);
        print(comida.descripcion);
        print(comida.estrellas);
        },
  );
}