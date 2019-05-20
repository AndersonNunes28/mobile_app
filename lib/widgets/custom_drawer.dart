import 'package:flutter/material.dart';
import 'package:mobile_app/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() =>
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.grey,
                    Colors.white
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
              )
          ),
        );
    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 0),
                height: 170.0,
                child: Stack(
                  children: <Widget>[
                      Positioned(
                       top: 20.0,
                       left: 0.0,
                       child: Text("Asimov Jr.",
                          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                           ),
                      ),
                       Positioned(
                        left: 0.0,
                        bottom: 0.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Seja bem vindo",
                               style: TextStyle(
                                fontSize: 18.0,
                                 fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                              child: Text(
                                  "Entre ou cadastre-se",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 16.0,
                                      fontWeight:  FontWeight.bold
                                  ),
                                ),
                              onTap: (){

                              },
                              )

                          ],


                          ),
                        )


                    ],


                ),
              ),
              Divider(),
              Drawertile(Icons.home, "Início"),
                Drawertile(Icons.local_pizza, "Pizzas"),
                Drawertile(Icons.list, "Massas"),
                Drawertile(Icons.fastfood, "Lanches"),
                Drawertile(Icons.cake, "Sobremesas"),
                Drawertile(Icons.local_bar, "Bebidas"),

            ],
          )
        ],
      ),
    );
  }
}
