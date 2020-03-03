import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'pages/home_page.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:fooddelivery/src/scoped-model/food_model.dart';

class App extends StatelessWidget{

  FoodModel foodModel = FoodModel();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModel<FoodModel>(
      model: foodModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Food Delivery App",
        theme: ThemeData(
          primaryColor: Colors.blueAccent
        ),
        home: MainScreen(foodModel: foodModel),
      ),
    );
  }
}
