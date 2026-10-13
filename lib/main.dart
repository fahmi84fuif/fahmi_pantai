import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Modangan(),
    );
  }
}

class Modangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.beach_access),
        title: Text("Pantai Modangan"),
        foregroundColor: Color(0xfffbf9f9),
        backgroundColor: Color(0xFF23465A),
        elevation: 0,
      ),

      // BACKGROUND FOTO FULL LAYAR
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/p.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.45),
              BlendMode.darken,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // FOTO PANTAI
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'asset/modangan.jpg',
                    width: double.infinity,
                    height: 210,
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(height: 20),

                // NAMA
                Text(
                  "Muhammad Fahmi Ahza Mahadir",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 8,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 8),

                // LOKASI
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.orangeAccent,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        "Pantai Modangan, Malang, Jawa Timur",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 25),

                // INFORMASI
                Text(
                  "Informasi Pantai",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 12),

                Row(
                  children: [
                    Expanded(
                      child: InfoCard(
                        icon: Icons.waves,
                        title: "Kategori",
                        value: "Wisata Alam",
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: InfoCard(
                        icon: Icons.beach_access,
                        title: "Suasana",
                        value: "Pantai",
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 25),

                // TENTANG PANTAI
                Text(
                  "Tentang Pantai Modangan",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Pantai Modangan merupakan salah satu "
                  "destinasi wisata yang terletak di Kabupaten "
                  "Malang, Jawa Timur. Pantai ini memiliki "
                  "pemandangan laut yang indah, ombak yang "
                  "menarik, serta lingkungan alam yang masih "
                  "alami. Pengunjung dapat menikmati "
                  "pemandangan laut dan bersantai bersama "
                  "keluarga maupun teman.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 25),

                // LOKASI DAN PEMILIK
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.40),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.white30,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.orangeAccent,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Donomulyo, Kabupaten Malang",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Divider(color: Colors.white30),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.orangeAccent,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Muhammad Fahmi Ahza Mahadir",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25),

                // KATA-KATA PENUTUP
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Keindahan Alam, Menyapa Hati",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              blurRadius: 8,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "PANTAI MODANGAN • MALANG",
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// KARTU INFORMASI
class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color color;

  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.40),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white30,
        ),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
            size: 30,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 5),
          Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
