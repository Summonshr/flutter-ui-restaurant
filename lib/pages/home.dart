import 'package:flutter/material.dart';
import '../components/MenuItem.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.business),
        backgroundColor: Colors.yellow.shade800,
      ),
      backgroundColor: Colors.yellow.shade50.withOpacity(0.9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.grey.shade900, size: 25.0),
        elevation: 0.0, // Removes background
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu, color: Colors.orange.shade800),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.filter),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.live_help),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Text('This would be a nic drawer header'),
            ),
            ListTile(title: Text('Menu 1')),
            ListTile(title: Text('Menu 2')),
            ListTile(title: Text('Menu 3')),
            ListTile(title: Text('Menu 4')),
            ListTile(title: Text('Menu 5')),
          ],
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                'Let\'s eat\nQuality food',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 35.0),
              ),
            ),
            Container(
              padding: EdgeInsets.all(25.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.search, color: Colors.grey.shade700),
                          border: new OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          hintText: "Search food..",
                          filled: true,
                          fillColor: Colors.yellow.shade100.withOpacity(0.5)),
                    ),
                  )),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.yellow.shade800,
                          borderRadius: BorderRadius.circular(15.0)),
                      padding: EdgeInsets.all(15.0),
                      child: Icon(Icons.filter_list)),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    MenuItem(
                        title: "Fast Food",
                        image: './images/burger.png',
                        active: true),
                    MenuItem(
                        title: "Fruit Item",
                        image: './images/strawberry.png',
                        active: false),
                    MenuItem(
                        title: "Vegetables",
                        image: './images/broccoli.png',
                        active: false),
                    MenuItem(
                        title: "Juice",
                        image: './images/juice.png',
                        active: false),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 420,
                child: Row(
                  children: <Widget>[
                    FoodItem(
                        image: './images/food-2.png',
                        title: 'Egg pasta',
                        subtitle: 'Spicy Chicken pasta',
                        price: '9.80',
                        calories: '78 Calories'),
                    FoodItem(
                        image: './images/food-5.png',
                        title: 'Buffey spicy',
                        subtitle: 'Buff Spicy Veg',
                        price: '7.20',
                        calories: '42 Calories'),
                    FoodItem(
                        image: './images/food-3.png',
                        title: 'Potato spicy',
                        subtitle: 'Potato Spicy Veg',
                        price: '19.80',
                        calories: '200 Calories'),
                    FoodItem(
                        image: './images/food-4.png',
                        title: 'Chicken spicy',
                        subtitle: 'Chicken Spicy',
                        price: '19.80',
                        calories: '200 Calories'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  final String image;

  final String title;

  final String subtitle;

  final String price;

  final String calories;

  const FoodItem(
      {Key key,
      this.image,
      this.title,
      this.subtitle,
      this.price,
      this.calories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 25.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25.0)),
          width: 230,
          height: 280,
          child: Column(
            children: <Widget>[
              SizedBox(height: 120.0),
              Text(title,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
              SizedBox(height: 10.0),
              Text(
                subtitle,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                      height: 20,
                      width: 20,
                      image: AssetImage('./images/icon.png')),
                  Text(' ' + calories,
                      style: TextStyle(color: Colors.red, fontSize: 18.0)),
                ],
              ),
              SizedBox(height: 20.0),
              Text.rich(TextSpan(
                  text: '\$',
                  style:
                      TextStyle(color: Colors.yellow.shade800, fontSize: 20.0),
                  children: [
                    TextSpan(
                        text: ' ' + price,
                        style: TextStyle(color: Colors.black, fontSize: 30.0))
                  ]))
            ],
          ),
        ),
        Positioned(
          top: -50,
          left: 60,
          child:
              Image(width: 160, fit: BoxFit.fitWidth, image: AssetImage(image)),
        ),
      ],
    );
  }
}
