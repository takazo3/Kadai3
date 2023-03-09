import 'package:flutter/material.dart';
import 'package:kadai3/play.dart';
import 'album.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get onPressed => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(useMaterial3: true),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("ホーム"),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                    onPressed: onPressed,
                    icon: const Icon(Icons.search, size: 30))
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("あなたへのおすすめ",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.chevron_right, size: 25)),
                      ]),
                ),
                SizedBox(
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      AlbumWidget(album: albums[0]),
                      AlbumWidget(album: albums[1]),
                      AlbumWidget(album: albums[2]),
                      AlbumWidget(album: albums[3]),
                      AlbumWidget(album: albums[4]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("カテゴリー",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.chevron_right, size: 25)),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height:200,
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2 /3,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.purple, //始まりの色
                                  Colors.black, //終わりの色
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const Text("Classical",style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)
                            )
                        ),
                        Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.orange, //始まりの色
                                  Colors.red, //終わりの色
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const Text("Pops",style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)
                            )
                        ),
                        Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.blue, //始まりの色
                                  Colors.blueGrey, //終わりの色
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const Text("Jazz",style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)
                            )
                        ),
                        Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.green, //始まりの色
                                  Colors.black, //終わりの色
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const Text("Rock",style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)
                            )
                        ),
                        Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.brown, //始まりの色
                                  Colors.black, //終わりの色
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const Text("Country",style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)
                            )
                        ),
                        Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.pinkAccent, //始まりの色
                                  Colors.blue, //終わりの色
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const Text("Healing",style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)
                            )
                        ),
                        Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.white, //始まりの色
                                  Colors.black, //終わりの色
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const Text("Others",style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)
                            )
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children :[
                          IconButton(
                          icon: const Icon(Icons.home),
                          onPressed: () {
                            //処理
                          },
                          iconSize: 35,
                        ),
                          const Text("Home",style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              ))
                    ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children :[
                          IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              //処理
                            },
                            iconSize: 35,
                          ),
                          const Text("Search",style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ))
                        ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children :[
                          IconButton(
                            icon: const Icon(Icons.playlist_play_rounded),
                            onPressed: () {
                              //処理
                            },
                            iconSize: 35,
                          ),
                          const Text("Playlist",style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ))
                        ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children :[
                          IconButton(
                            icon: const Icon(Icons.account_circle_outlined),
                            onPressed: () {
                              //処理
                            },
                            iconSize: 35,
                          ),
                          const Text("Account",style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ))
                        ])
                  ],
                )
              ]),
            )));
  }
}

List albums = [
  Album(imagePath: "images/aimer.jpg", title: "After Dark", artist: "Aimer"),
  Album(
      imagePath: "images/ca.jpeg",
      title: "Back to Basics",
      artist: "Christina Aguilera"),
  Album(
      imagePath: "images/kaze.jpeg",
      title: "LOVE ALL SERVE ALL",
      artist: "藤井風"),
  Album(imagePath: "images/oneok.jpg", title: "人生×僕=", artist: "ONE OK ROCK"),
  Album(
      imagePath: "images/sleep.jpeg", title: "Be Alright", artist: "sleep beat")
];

class AlbumWidget extends StatelessWidget {
  const AlbumWidget({Key? key, required this.album}) : super(key: key);
  final Album album;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Play(album:album),

              ));
            },
            child: SizedBox(
              width: 200,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(album.imagePath, fit: BoxFit.cover),
              ),
            ),
          ),
          Text(album.title),
          Text(album.artist),
        ],
      ),
    );
  }
}
