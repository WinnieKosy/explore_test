import 'package:carousel_slider/carousel_slider.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
         title: const Text('Explore',
         style: TextStyle(
           fontWeight: FontWeight.w500,
           fontSize: 24
         ),),
          actions:  [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF8694f9)
              ),
                child: const Icon(Icons.emoji_events,)),
            Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 5),
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF8694f9)
                ),
                child: const Icon(Icons.shopping_cart,))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(5, 15, 5, 10),
            child: Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height/12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xFF0A1172),
                  border: Border.all(color: Colors.lightBlueAccent,width: 1)
                ),
                  child: const ListTile(
                    leading:  CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.yellow,
                    ),
                    title: Text('Play and earn coins',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                        color:Colors.white
                    ),),
                    trailing: Icon(Icons.keyboard_double_arrow_right,size: 30, color: Colors.white,),
                  )
              ),const SizedBox(height: 15,),
                Center(
                  child: CarouselSlider(
                    options: CarouselOptions(height: 190,
                    viewportFraction: 1, autoPlay: true, autoPlayInterval: const Duration(seconds: 5)),
                      items: [
                        Image.asset('assets/baby.jpeg',
                        fit: BoxFit.cover,),
                        Image.asset('assets/person.jpeg',
                        fit: BoxFit.cover,),
                        Image.asset('assets/butterfly.jpeg',
                        fit: BoxFit.cover,),
                      ].map((image) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                child: image
                            );
                          },
                        );
                      }).toList(),
                  ),),
                const SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('All Subscriptions',style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ), ),
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[700]
                        ),
                        child: const Text('See More', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.yellowAccent,
                          fontSize: 18
                        ),),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 12,),
                Container(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[700],
                  ),
                    height: 230,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                      itemBuilder: (BuildContext ,context){
                    return Stack(
                      children: [
                        Container(
                        margin: const EdgeInsets.only(right: 2, left: 3),
                        width: 200,
                        height:230,
                        decoration: const BoxDecoration(
                          borderRadius:BorderRadius.all(Radius.circular(5)),
                         color: Colors.blueGrey
                        ),
                        child: Image.asset('assets/dog.png', fit: BoxFit.cover,),
                      ),
                      Container(
                        width: 203,
                        height: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:Colors.black26,
                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  margin: const EdgeInsets.only(left: 3),
                                  height: 50,
                                  width: 40,
                                  decoration:const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5)
                                    ),
                                    color: Colors.greenAccent,
                                  ),
                                  child: Column(
                                    children: const [
                                      Text('UPTO',
                                          style: TextStyle(
                                              color: Colors.white,
                                            fontSize: 11
                                          )),
                                      Text('57 %',
                                        style: TextStyle(
                              color: Colors.white,
                              fontSize: 14),),
                                      Text('OFF',
                              style: TextStyle(
                              color: Colors.white,
                              fontSize: 12))
                                    ],
                                  )
                                ),
                                const CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Color(0xFF9223A7),
                                  child: Text('voot',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),)
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                Text('Voot',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                                ),),
                                Text('Starting at ₹289.76',
                                    style: TextStyle(
                                        color: Colors.yellowAccent,
                                        fontSize: 18)
                                )]
                              ),
                            )
                          ],
                        ),
                      )]
                    );
                },
                )),
                const SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Public Groups',style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ), ),
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[700]
                        ),
                        child: const Text('See More', style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.yellowAccent,
                            fontSize: 18
                        ),),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 12,),
                ListView.builder(
                scrollDirection: Axis.vertical,
                 physics: const ScrollPhysics(),
                 shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext ,context){
                  return Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 100,
                    decoration:BoxDecoration (
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[800],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                         width:width,
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 90,
                                    decoration:const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5)
                                      ),
                                      color: Colors.greenAccent,
                                    ),
                                    child: const Text('3+ groups',
                                    style: TextStyle(
                                      color: Colors.white
                                    ),),
                                  ),
                                  Stack(
                                      children: [
                                        const CircleAvatar(
                                      radius: 24,
                                        backgroundImage: AssetImage('assets/youtube.webp')
                                    ),
                                    Positioned(
                                      bottom: -1,
                                      right: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.white, width: 2)
                                        ),
                                        child: const CircleAvatar(
                                          radius: 10,
                                          backgroundColor: Colors.yellowAccent,
                                        ),
                                      ),
                                    )]
                                  )
                                ],
                              ),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(height: 15,),
                                  Text('Youtube Premium',
                                    style: TextStyle(
                                        color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19,

                                    ),),
                                  SizedBox(height: 5,),
                                  Text('by Bruised Vein',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),),
                                  SizedBox(height: 5,),
                                  Text('4/6 friends sharing',
                                    style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,

                                    ),)
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 10,),
                                    const Text('₹38/ User /Month',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,

                                      ),),
                                    const SizedBox(height: 5,),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 40,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.blue
                                      ),
                                      child: const Text('Join',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,

                                          )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        LinearPercentIndicator(
                          percent: 0.6,
                          backgroundColor: Colors.grey,
                          progressColor: Colors.blue,
                        )
                      ],
                    ),
                  );
                  }),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.yellow)
                  ),
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  child: const Text('Show All Public Groups',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18
                  ),),
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
                  color: Colors.grey[800],
                  height: 162,
                  width: MediaQuery.of(context).size.width,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('What do you want us to list next?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,)),
                      const SizedBox(height: 10,),
                      const Text('Suggest us a subscription',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,)),
                      const SizedBox(height: 10,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.centerLeft,
                              height:50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[700],
                              ),
                              child: const Text('Give your suggestion',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19,)
                                  ),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          const Icon(Icons.send, color: Colors.white,)
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30,)
              ]
            )
          ),
        ),
        bottomNavigationBar: ConvexAppBar(
          style: TabStyle.fixedCircle,
          height: 60,
          top: -20,
          backgroundColor: Colors.grey[900],
         activeColor: Colors.blue,
          color: Colors.white,
          curveSize: 90,
          items: const [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.explore, title: 'Explore'),
            TabItem(icon: Icons.add,),
            TabItem(icon: Icons.chat_bubble, title: 'Chat'),
            TabItem(icon: Icons.account_balance_wallet,title: 'SubPay')
          ],
        ),
      ),
    );
  }
}


