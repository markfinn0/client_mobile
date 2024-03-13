import 'package:flutter/material.dart';
import 'package:flutter_application/reuse_objects/button_home.dart';
import 'package:flutter_application/reuse_objects/app_bar_default.dart';
import 'package:flutter_application/reuse_objects/screen_dimensions.dart';

class MyAllBenefitsCompaniesPageConstructor extends StatelessWidget {
  const MyAllBenefitsCompaniesPageConstructor({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppBar myAppBar = MyAppBarPageConstructorWithSearchBar.buildAppBar(
      context,
      () {
        Navigator.of(context).pop();
      },
      SearchBar: TextField(
        decoration: InputDecoration(
          labelText: 'Search',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
        ),
      ),
      iconAction: IconButton(
        icon: Icon(
          Icons.location_pin,
          color: Colors.red,
        ),
        onPressed: () {
          // Ação ao pressionar o ícone de pesquisa
        },
      ),
    );

    double? appBarHeight = myAppBar.toolbarHeight;
    
    ScreenInfo screenInfo = getScreenInformation(context);
    double paddingButtonHorizontal = screenInfo.screenWidth * 0.03;
    double heightButtonPersonalize = screenInfo.screenHeight * 0.09;
    double widthButtonPersonalize = screenInfo.screenWidth * 0.4;
    return Scaffold(
      appBar: myAppBar,
      body: SingleChildScrollView( child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingButtonHorizontal, vertical: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: paddingButtonHorizontal, vertical: 10),
                        child: UserButtonBodyConstructor(
                          localIcon:
                              'assets/asset/imgs/accounts_screens/beneficios.png',
                          heightButton: heightButtonPersonalize,
                          textLabel: "Beneficios Ativos",
                          pageNavigate: () {},
                          widthButton: widthButtonPersonalize,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: paddingButtonHorizontal, vertical: 10),
                        child: UserButtonBodyConstructor(
                          localIcon:
                            'assets/asset/imgs/benefits_screens/favorite.png',
                          heightButton: heightButtonPersonalize,
                          textLabel: "Favoritos",
                          pageNavigate: () {},
                          widthButton: widthButtonPersonalize,
                        ),
                      ),
                    ],
                  ),
                ),

            
              ], 
            ),
          ],
         
        ),
      ),) 
      
    );
  }
}
