import 'package:flutter/material.dart';
import 'package:task_cis/Home/controller.dart';
import 'package:task_cis/componant/button.dart';
import '../Details/Details.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homeController= HomeController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF01655C),
        elevation: 0,
        leading: const Icon(Icons.menu),
        actions:  [
          Icon(Icons.search_rounded),
          Container(
            width: 40,
            height: 10,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40) ,
              color: Colors.transparent,
            ),
            child: Center(child: Image.asset("images/fav.jpg"),),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              height: MediaQuery.of(context).size.height / 2.7,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0XFF01655C),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                ),
              ),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text(
                      "Explore",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index)=>Image.network("https://www.rawaiamanzilia.com/image/cache/catalog/%D8%A7%D9%84%D8%A7%D8%AB%D8%A7%D8%AB/PicsArt_01-28-03.19.20-550x550h.png"),
                        separatorBuilder: (context,index)=>const SizedBox(width: 20,),
                        itemCount: 4,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(homeController.text.length, (index) =>
                        Button(text:homeController.text[index] ,width: 85,height: 30))
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Details()),
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.width / 2.2,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFADDACE),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Green Chaire",),
                              const SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("\$ 56"),
                                  Row(
                                    children: const [
                                      Icon(Icons.star,size: 15,),
                                      Text("4.6")
                                    ],
                                  )
                                ],
                              ),
                              Expanded(child: Image.network("https://i.pinimg.com/474x/c4/c8/4b/c4c84b355ea74ebee9949d60a2d7a21b.jpg")),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Details()),
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.width / 2.2,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFADDACE),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Green Chaire",),
                              const SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("\$ 56"),
                                  Row(
                                    children: const [
                                      Icon(Icons.star,size: 15,),
                                      Text("4.6")
                                    ],
                                  )
                                ],
                              ),
                              Expanded(child: Image.network("https://www.atkinandthyme.co.uk/media/catalog/product/cache/ff4df62209228869e2d6e438912332e8/3/_/3_1.jpg")),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
