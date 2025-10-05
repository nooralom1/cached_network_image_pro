📸 Cached Network Image Pro

A professional Flutter widget that extends the power of CachedNetworkImage by adding built-in support for location metadata such as heading, coordinates, elevation, and address — perfect for location-based and travel apps.

✨ Features

⚡ Smart caching powered by cached_network_image

🧭 Displays heading, coordinates, and elevation below the image

🌍 Reverse geocoding support (convert coordinates into readable locations)

🎨 Customizable layout and design

🪶 Lightweight, responsive, and easy to integrate

🔁 Automatic image reloads when location data changes

📦 Installation

Add this package to your pubspec.yaml:

dependencies:
  cached_network_image_pro: ^1.0.0


Then get the dependencies:

flutter pub get


Import the package in your Dart file:

import 'package:cached_network_image_pro/cached_network_image_pro.dart';

🚀 Example
import 'package:flutter/material.dart';
import 'package:cached_network_image_pro/cached_network_image_pro.dart';

void main() {
  runApp(const ImageProExample());
}

class ImageProExample extends StatelessWidget {
  const ImageProExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Cached Network Image Pro Example')),
        body: const Center(
          child: CachedNetworkImagePro(
            imageUrl: 'https://picsum.photos/400/300',
            heading: 'North-East',
            latitude: 23.8103,
            longitude: 90.4125,
            elevation: '15m',
          ),
        ),
      ),
    );
  }
}

🧭 Parameters
Parameter	Type	Description
imageUrl	String	The image URL to display and cache.
heading	String?	Displays the compass direction (e.g., “North-East”).
latitude	double?	Latitude of the image’s location.
longitude	double?	Longitude of the image’s location.
elevation	String?	Elevation or altitude text.
borderRadius	double?	Rounds the image corners (default: 8).
showDetails	bool	Toggles location details below the image (default: true).
📷 Screenshot
<p align="center"> <img src="https://raw.githubusercontent.com/softvence/cached_network_image_pro/main/assets/example.jpg" width="300" /> </p>
👨‍💻 Developed By
<p align="center"> <img src="https://avatars.githubusercontent.com/u/132379427?v=4" width="120" height="120" style="border-radius:50%" /> </p> <h3 align="center">Md. Noor-Alom Siddik (Softvence)</h3> <p align="center"> <a href="https://github.com/nooralom1"> <img src="https://img.shields.io/badge/GitHub-nooralom1-black?logo=github" /> </a> <a href="mailto:noor418534@gmail.com"> <img src="https://img.shields.io/badge/Email-noor418534%40gmail.com-red?logo=gmail" /> </a> <a href="https://softvence.com"> <img src="https://img.shields.io/badge/Website-softvence.com-blue?logo=google-chrome" /> </a> </p>
💡 Contributing

Contributions are welcome! 🙌

Fork the repository

Create your feature branch (git checkout -b feature/YourFeature)

Commit your changes (git commit -m 'Add new feature')

Push to the branch (git push origin feature/YourFeature)

Open a Pull Request

❤️ Support

If you find this package useful, please ⭐ it on pub.dev

and share it with the Flutter community!