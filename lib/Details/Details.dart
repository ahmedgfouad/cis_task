import 'package:flutter/material.dart';
import 'package:task_cis/Details/controller.dart';

import '../componant/button.dart';
import '../componant/colorsItem.dart';

class Details  extends StatefulWidget {
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var detailsController = DetailsController();
  int count=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Sofa",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:Icon(Icons.arrow_back,color: Colors.black,)),
        actions: [
          Icon(Icons.shopping_bag,color: Color(0xFF056E63),),
          SizedBox(width: 20,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(
                detailsController.images[detailsController.imageIndex],fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text(
                  "Blue Sofa",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
                Text("\$ 65",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19))
              ],
            ),
            const Text(
                "sdfasdfasdasdfdssdfasdfasdasdfdssdfasdfasdasdfdssdfasdfasdasdfdssdfasdfasdasdfdssdfasdfasdasdfdssdfasdfasdasdfdssdfasdfasdasdfds"),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Color",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                Row(
                  children: List.generate(
                    detailsController.images.length,
                        (index) => InkWell(
                        onTap: () {
                          detailsController.imageIndex = index;
                          setState(() {});
                        },
                        child: ColorsItem(
                            color: detailsController.colors[index],
                            radius: 10)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Quantatity",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFCBE3DE),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            count++;
                          });
                        },
                        child: ColorsItem(
                          color: 0xFF045B51,
                          icon: Icons.add,
                        ),
                      ),
                      Text("$count",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22)),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            if(count<=0)
                              return ;
                            else
                              count--;
                          });
                        },
                        child: ColorsItem(
                          color: 0xFF045B51,
                          icon: Icons.remove,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 40),
            Button(text: "Add to Cart", colorContainer: 0xFFCBE3DE),
            const SizedBox(
              height: 20,
            ),
            Button(
                text: "Buy now",
                colorContainer: 0xFF056E63,
                colorText: 0xFFFFFFFF),
          ],
        ),
      ),
    );
  }
}
