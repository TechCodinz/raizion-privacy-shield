
import 'package:flutter/material.dart';

void main() {
  runApp(RaizionPrivacyApp());
}

class RaizionPrivacyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raizion Privacy Shield',
      home: PrivacyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PrivacyHome extends StatelessWidget {
  Widget buildButton(String label, IconData icon, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(label),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
          primary: Colors.deepPurple,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Raizion Privacy Control")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            buildButton("Activate Sanctuary Mode", Icons.shield, () {}),
            buildButton("Lock Camera Access", Icons.lock, () {}),
            buildButton("Aura & Dressing Mode", Icons.wb_iridescent, () {}),
            buildButton("Scan for Hidden Devices", Icons.wifi_tethering, () {}),
            buildButton("Emergency Alert", Icons.warning, () {}),
            Spacer(),
            Text("Voice commands also supported", style: TextStyle(fontStyle: FontStyle.italic))
          ],
        ),
      ),
    );
  }
}
