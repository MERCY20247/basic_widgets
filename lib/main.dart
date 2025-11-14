import 'package:flutter/material.dart';
import 'widgets/text_widget.dart';            
import 'widgets/container_widget.dart';      
import 'widgets/row_widget.dart';            
import 'widgets/column_widget.dart';        
import 'widgets/image_widget.dart';          
import 'widgets/network_image_widget.dart';  
import 'widgets/icon_widget.dart';           

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              //  Custom TextWidget
              const TextWidget(
                text: "Hello Flutter",
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),

              const SizedBox(height: 20),

              //  Custom local ImageWidget
              const ImageWidget(
                imagePath: 'assets/images/logo.png',
                width: 150,
                height: 150,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 20),

              //  Custom NetworkImageWidget
              const NetworkImageWidget(
                imageUrl: 'https://tse2.mm.bing.net/th/id/OIP.neZVdzHNGlIJRZHyNZwUNgHaEX?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3',
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 20),

              // Custom ContainerWidget
              ContainerWidget(
                width: 250,
                height: 120,
                color: Colors.lightBlueAccent,
                borderRadius: 16,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const TextWidget(
                  text: "Inside a container",
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              //  Custom RowWidget
              RowWidget(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.home, size: 30, color: Colors.blue),
                  Text("Row widget", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Icon(Icons.settings, size: 30, color: Colors.blue),
                ],
              ),

              const SizedBox(height: 20),

              //  Custom ColumnWidget
              ColumnWidget(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Column1", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 155, 38, 190))),
                  Text("Column2", style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 53, 17, 182))),
                  Text("Column3", style: TextStyle(fontSize: 14, color: Color.fromARGB(136, 23, 65, 156))),
                ],
              ),

              const SizedBox(height: 20),

              //  Custom IconWidget
              const IconWidget(
                icon: Icons.phone,
                size: 40,
                color: Colors.green,
              ),

              const SizedBox(height: 20),

              // Counter label
              const Text('You have pushed the button this many times:'),

              // Counter value
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
