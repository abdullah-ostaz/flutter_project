import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;


  MyAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: Color.fromARGB(255, 190, 39, 196)),
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(
          color: Color.fromARGB(255, 190, 39, 196),
          fontSize: 25,
        ),
      ),
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      actions: [
        PopupMenuButton<String>(
          offset: const Offset(-10,40),
          color:  Color.fromARGB(255, 190, 39, 196),
          onSelected: (String value){
            if(value == 'f') {
              Navigator.pushNamed(context, '/FavoriteScreen');
            }else{
              Navigator.pushNamed(context, '/CreateProductScreen');
            }
          },
          itemBuilder: (context){
                 return const [
            PopupMenuItem(
              value: 'f',
                child: Text('Favorite'),textStyle: TextStyle(color: Colors.white,fontSize: 20),),
            PopupMenuItem(
                value: 'a',
                child: Text('Add Product'),textStyle: TextStyle(color: Colors.white,fontSize: 20),)
          ];
        },)
      ],
      // actions: [IconButton(onPressed: () {
      //   Navigator.pushNamed(context, '/FavoriteScreen');
      // }, icon: const Icon(Icons.favorite_outline))],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
