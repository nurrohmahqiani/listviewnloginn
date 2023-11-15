import 'package:flutter/material.dart';

void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HalamanHomePage();
}

class _HalamanHomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Listview untuk produk skincare",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Produkskincare(),
    );
  }
}

class Produkskincare extends StatefulWidget {
  Produkskincare({Key? key}) : super(key: key);

  // final List<String> items =
  //     List<String>.generate(10000, (index) => "Item $index");

  @override
  State<Produkskincare> createState() => _Produkskincare();
}

class _Produkskincare extends State<Produkskincare> {
  final List skincare = [
    'Avoskin',
    'Somethinc',
    'Originote',
    'SBM',
    'SKIN1004',
    'natrep',
    'innisfree',
    'SK-II',
    'Autumn'
  ];
  final List skincareHarga = [
    'Rp55.000',
    'Rp75.000',
    'Rp25.000',
    'Rp160.000',
    'Rp210.000',
    'Rp126.000',
    'Rp77.000',
    'Rp2.000.000',
    'Rp66.000'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 153, 193, 225),
          title: const Text('Produk skincare juni 2023'),
        ),
        body: ListView.builder(
            itemCount: skincare.length,
            itemBuilder: (BuildContext context, index) {
              return Card(
                color: Color.fromARGB(255, 195, 191, 191),
                elevation: 10,
                shadowColor: Color.fromARGB(255, 182, 225, 245),
                child: ListTile(
                  title: Text(
                    skincare[index],
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  subtitle: Text('Harga ' + skincareHarga[index]),
                  leading: CircleAvatar(),
                  trailing:
                      IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                ),
              );
            }));
  }
}



//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//          title: const Text('Produk Skincare Juni 2023'),
//       ),
//       body: ListView.builder(
//         itemCount: 10, // Menampilkan hanya 10 item
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text('${items[index]}'),
//           );
//         },
//       ),
//     );
//   }
// }
