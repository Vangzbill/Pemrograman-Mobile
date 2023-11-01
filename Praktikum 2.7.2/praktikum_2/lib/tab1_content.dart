import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tab1Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt07d62336ee8ed926/6214ab2690aa357658b8e4cc/18-maguire.jpg?auto=webp&format=pjpg&width=3840&quality=60',
          alignment: Alignment.topCenter,
        ),
        Text(
          'Harry Maguire enggan pindah dari MU',
          textAlign: TextAlign.center,
          style: GoogleFonts.gothicA1(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          color: Color.fromARGB(255, 179, 0, 202),
          width: double.infinity,
          margin: EdgeInsets.only(top: 8.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Jendela Transfer',
              style: GoogleFonts.gothicA1(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              final itemImage =
                  'https://asset-2.tstatic.net/jambi/foto/bank/images/Sadio-Mane-gabung-Al-Nassr-FC-29072023.jpg';
              final itemTitle = 'Sadio Mane Gabung Al-Nassr FC !! Here We Go';
              final itemDate = '20-08-2023';

              return ListTile(
                leading: Image.network(itemImage),
                title: Text(itemTitle),
                subtitle: Text(itemDate),
              );
            },
          ),
        ),
      ],
    );
  }
}
