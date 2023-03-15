import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/images.dart';
import '../provider/service_provider.dart';

class name extends StatefulWidget {
  int index1;
  name({super.key, required this.index1});
  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    var m = Provider.of<ListProvider>(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  '${m.k?[widget.index1].name}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('${pic[widget.index1]}'),
                          fit: BoxFit.fill)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: Text(
                    'Fresh fruit and vegetables provide fibre and vitamins. Try to eat at least one piece of fruit a day. The scientists will study the variety of trees and observe which are fruiting. The team have really worked hard and are enjoying the fruits of that labour',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Container(
                color: Colors.greenAccent,
                height: 220,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Nutrients',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                              'Carbohydrate         :   ${m.k?[widget.index1].nutritions!.carbohydrates.toString()}'),
                        ),
                        Text(
                            'Protein                    :   ${m.k?[widget.index1].nutritions!.protein.toString()}'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                              'Fat                           :   ${m.k?[widget.index1].nutritions!.fat.toString()}'),
                        ),
                        Text(
                            'Calories                  :   ${m.k?[widget.index1].nutritions!.calories.toString()}'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                              'Sugar                      :   ${m.k?[widget.index1].nutritions!.sugar.toString()}'),
                        )
                      ]),
                ),
              ),
              const Text(
                'Benefits',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  '1.healthy for the heart',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '2.Great for the vision',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  '3.May help prevent osteoporosis',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '4. Components may prevent cancer',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  '5. Supporting fetal health',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '6.Reducing depression risk',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  '7.Improving digestion',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
