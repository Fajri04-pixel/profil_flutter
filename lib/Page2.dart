import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F0E8),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F0E8),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // Foto Profil
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/fortoprofil.jpg"),
            ),
            SizedBox(height: 12),

            // Nama
            Text(
              "Muhamad Fajri",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),

            // Card About
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromRGBO(252, 219, 138, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Aku manusia terkuat",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Card History
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "History",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Dia (Fajri) berhasil angkat beban 500kg di kompetisi dunia, semua orang kagum. Namun dia tetap berlatih keras setiap hari tanpa henti. Tidak ada yang bisa menandingi kekuatannya. Manusia Terkuat terus berjuang.",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Dia ikuti turnamen internasional melawan para juara dunia. Kalahkan semua lawan satu per satu dengan mudah. Raih gelar juara dunia 5 kali berturut-turut. Kini menjadi legenda dan inspirasi bagi jutaan orang di seluruh dunia.",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Card Skill - header kuning terpisah dari item putih
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header kuning
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    color: Color.fromRGBO(252, 219, 138, 1),
                    child: Text(
                      "Skill",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Item putih
                  _skillItem("Bisa Mengangkat Pesawat"),
                  _skillItem("Bisa Mengangkat Mobil Bus"),
                  _skillItem("Bisa Mengangkat Orang yang BB nya 100+"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _skillItem(String skill) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200),
        ),
      ),
      child: Text(
        skill,
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}