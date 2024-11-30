import 'package:flutter/material.dart';

import 'package:projects/models/clothing_model.dart';
import '../widgets/clothing_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Clothing> clothing = [
      Clothing(id: 0, name: "T-Shirt", img: "https://dtfsheet.com/cdn/shop/files/Comfort_Colors_1717_Red_Front_High.jpg?v=1715639853"),
      Clothing(id: 1, name: "Jeans", img: "https://found.store/cdn/shop/files/baggy-jeans-blue-lacy-found-2-1.jpg?v=1714676802&width=700"),
      Clothing(id: 2, name: "Jacket", img: "https://cdni.llbean.net/is/image/wim/520163_699_41?hei=1095&wid=950&resMode=sharp2&defaultImage=llbprod/520163_699_41"),
      Clothing(id: 3, name: "Dress", img: "https://n.nordstrommedia.com/it/f24e4b48-9a29-4e2c-a94b-119cde8118f3.jpeg?h=365&w=240&dpr=2"),
      Clothing(id: 4, name: "Hoodie", img: "https://perplex.store/cdn/shop/files/1000084-ArmorHoodieBlack_01_bf22178f-324e-437f-af68-be4edd1f4a29.jpg?v=1728915678")];


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.redAccent[100],
        leading: IconButton(onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white, size: 24,)),
        title: const Text("206011", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white, size: 24))
        ],
      ),
      body: ClothingGrid(clothing: clothing),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(Icons.share_rounded),
      ),
    );
  }
}
