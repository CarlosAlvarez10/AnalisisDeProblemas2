import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _Principal createState() => _Principal();
}

class _Principal extends State<Home> {
  static const precio = '\$69,000';
  static const direccion = '2 beds, 1 bath, 1300 sqft';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView( // Utiliza SingleChildScrollView para hacer que el contenido sea desplazable
          child: Column(
            children: [
              DefaultTabController(
                length: 1,
                child: TabBarView(
                  children: [
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 200.0,
                            width: 700.0,
                            child: Image.network(
                              'https://media.istockphoto.com/id/618455778/es/foto/casa-blanca-de-dos-pisos-con-garaje.jpg?s=612x612&w=is&k=20&c=ANIavtYaNYodPy0Gu7ohWehc6pYtumdptR8sSrrnhQ4=',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(precio, style: TextStyle(fontSize: 34.0)),
                                    SizedBox(width: 188.0),
                                  ],
                                ),
                                Icon(Icons.share),
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 14),
                            alignment: Alignment.centerLeft,
                            child: const Text(direccion),
                          ),
                          const Card(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[Text('')],
                                ),
                              ],
                            ),
                          ),
                          const Card(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text('      4\ncamas\n'),
                                    ],
                                  ),
                                ),
                                Text(
                                  '|',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.grey,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text('     3\nbaños\n'),
                                    ],
                                  ),
                                ),
                                Text('|'),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text('  4,200\nPies ft\n'),
                                    ],
                                  ),
                                ),
                                Text('|'),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text('  8,300\nmanos ft\n'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              AppBar(
                backgroundColor: Colors.white,
                leading: TextButton(
                  onPressed: () {
                    // Acción al hacer clic en la "X" en la esquina superior izquierda
                  },
                  child: const Text('x', style: TextStyle(fontSize: 24.0)),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      // Acción al hacer clic en la flecha hacia arriba
                    },
                    child: const Text('↑', style: TextStyle(fontSize: 24.0)),
                  ),
                  TextButton(
                    onPressed: () {
                      // Acción al hacer clic en la flecha hacia abajo
                    },
                    child: const Text('↓', style: TextStyle(fontSize: 24.0)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 10,
                      bottom: 10,
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.map,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "View Map",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 10,
                      bottom: 10,
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.directions_car,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "10 minutes away",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 16,
                            right: 5,
                            top: 0,
                            bottom: 0,
                          ),
                          child: const Text(
                            "Open Houses",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      right: 5,
                      top: 0,
                      bottom: 0,
                    ),
                    child: const Row(
                      children: [
                        Text(
                          "Friday 1:00pm - 4:00pm",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      right: 5,
                      top: 0,
                      bottom: 0,
                    ),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            final snackBar = SnackBar(
                              content: const Text(
                                  '2/24 No se, pasa algo impresionante supongo'),
                              action:
                                  SnackBarAction(label: 'Undo', onPressed: () {}),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: const Text(
                            "2/24 >",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Color transparente
                            onPrimary: Colors.black, // Color del texto
                            elevation: 0, // Sin elevación
                            padding: const EdgeInsets.all(0), // Sin relleno
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      right: 5,
                      top: 0,
                      bottom: 0,
                    ),
                    child: const Row(
                      children: [
                        Text(
                          "Saturday 1:00pm - 4:00pm",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      right: 5,
                      top: 0,
                      bottom: 0,
                    ),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            final snackBar = SnackBar(
                              content: const Text(
                                  '2/25, estoy empezando a creer que son fechas'),
                              action:
                                  SnackBarAction(label: 'Undo', onPressed: () {}),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: const Text(
                            "2/25 >",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Color transparente
                            onPrimary: Colors.black, // Color del texto
                            elevation: 0, // Sin elevación
                            padding: const EdgeInsets.all(0), // Sin relleno
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity, // Ocupa todo el ancho
                padding: const EdgeInsets.all(15), // Espaciado interno
                color: const Color.fromARGB(255, 255, 255, 255), // Color de fondo del botón
                child: ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: const Text(
                          'Contactar con un agente? Con gusto, estamos llamando al 911 por usted :D'),
                      action: SnackBarAction(label: 'Undo', onPressed: () {}),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text(
                    "Contact Agent",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
