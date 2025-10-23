import 'package:flutter/material.dart';

class Day1Page extends StatelessWidget {
  const Day1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 1: Basic Widgets"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Column(
          children: [
            Text(
              'Hello Flutter Day-1',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),
            // Rich Text
            RichText(
              text: TextSpan(
                text: 'This is Rich Text ',
                style: TextStyle(color: Colors.black, fontSize: 22),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Flutter',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' Leaner',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),

            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 50,
              semanticLabel: 'A red heart',
            ),

            Icon(Icons.home, color: Colors.blue, size: 50),

            Image.asset(
              'assets/images/myimage.png',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),

            Image.network(
              'https://images.unsplash.com/photo-1488372759477-a7f4aa078cb6?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGltYWdlfGVufDB8fDB8fHww&auto=format&fit=crop&q=60&w=600',
              width: 200,
              height: 200,
            ),

            /*Image.network(
              'https://images.unsplash.com/photo-1598214886806-c87b84b7078b?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGltYWdlfGVufDB8fDB8fHww&auto=format&fit=crop&q=60&w=600',
              loadingBuilder:
                  (
                    BuildContext context,
                    Widget child,
                    ImageChunkEvent? loadingProgress,
                  ) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
              errorBuilder:
                  (
                    BuildContext context,
                    Object exception,
                    StackTrace? stackTrace,
                  ) {
                    return Icon(Icons.error, color: Colors.red, size: 50);
                  },
            ),*/
          ],
        ),
      ),
    );
  }
}
