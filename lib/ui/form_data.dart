import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
        leading: const Icon(Icons.person_add_alt_1),
        backgroundColor: Colors.blueAccent,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _textboxNama(),
            const SizedBox(height: 10),
            _textboxNIM(),
            const SizedBox(height: 10),
            _textboxTahun(),
            const SizedBox(height: 20),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      controller: _namaController,
    );
  }

  _textboxNIM() {
    return TextField(
      decoration: InputDecoration(
        labelText: "NIM",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      controller: _nimController,
    );
  }

  _textboxTahun() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Tahun Lahir",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      controller: _tahunController,
      keyboardType: TextInputType.number,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String nama = _namaController.text;
        String nim = _nimController.text;
        int tahun = int.parse(_tahunController.text);
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                TampilData(nama: nama, nim: nim, tahun: tahun)));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: const Text('Simpan', style: TextStyle(fontSize: 16)),
    );
  }
}
