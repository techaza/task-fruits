import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/provider/service_provider.dart';
import 'package:task/screens/newpage.dart';
import 'models/images.dart';
import 'models/listmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ListProvider())
        ],
        child: const MaterialApp(
          home: fruits(),
        ));
  }
}

class fruits extends StatefulWidget {
  const fruits({super.key});
  @override
  State<fruits> createState() => _fruitsState();
}

class _fruitsState extends State<fruits> {
  List<Images>? k;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ListProvider>().fetchpage();
  }

  @override
  Widget build(BuildContext context) {
    var m = Provider.of<ListProvider>(context);
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.blue,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Fruit List',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const Text(
                'please select the fruit you want to know',
              ),
              const Text('the details'),
              SizedBox(
                  // color: Colors.red,
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 5.8 / 8),
                      itemCount: 8,
                      itemBuilder: (buildContext, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          child: SizedBox(
                            height: 20,
                            child: Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              // color: Colors.amber,
                              elevation: 5,
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          '${m.k?[index].name}',
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('${pic[index]}'),
                                    radius: 50,
                                  ),
                                  Text(
                                    'carbohydrates : ${m.k?[index].nutritions!.carbohydrates.toString()}',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    'protein : ${m.k?[index].nutritions!.protein.toString()}',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    'fat : ${m.k?[index].nutritions!.fat.toString()}',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    'calories : ${m.k?[index].nutritions!.calories.toString()}',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    'sugar : ${m.k?[index].nutritions!.sugar.toString()}',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () => Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (index1) => name(
                                                  index1: index,
                                                ))),
                                    child: Container(
                                      height: 35,
                                      width: double.infinity,
                                      color: Colors.blue,
                                      child: const Center(
                                          child: Text(
                                        'View details',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }))
            ],
          )),
    );
  }
}
