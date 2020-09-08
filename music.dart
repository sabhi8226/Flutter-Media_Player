import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'audio.dart';
//import 'video.dart';
import 'video_assets.dart';
import 'video_new.dart';

AudioPlayer audioPlayer = new AudioPlayer();
var ap = new AudioCache(fixedPlayer: audioPlayer);

playonline() async {
  ap.clearCache();
  await ap.play('payabhi.mp3');
}

pause() {
  audioPlayer.pause();
}

stop() {
  audioPlayer.stop();
}

var myHome = DefaultTabController(
  length: 4,
  child: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.purple.shade300,
      actions: <Widget>[Icon(Icons.music_note, size: 28)],
      leading: IconButton(
        icon: Icon(
          Icons.home,
          color: Colors.white,
          size: 28,
        ),
        onPressed: () {},
      ),
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.audiotrack, size: 28, color: Colors.white)),
          Tab(icon: Icon(Icons.audiotrack, size: 28, color: Colors.white)),
          Tab(icon: Icon(Icons.video_library, size: 28, color: Colors.white)),
          Tab(icon: Icon(Icons.video_library, size: 28, color: Colors.white)),
        ],
        indicatorColor: Colors.white,
      ),
      title: Text('Music App',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Nexa",
            fontSize: 28,
          )),
      centerTitle: true,
    ),
    body: TabBarView(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 70),
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.purple.shade300,
                borderRadius: BorderRadius.circular(40),
                //shape: BoxShape.circle,
              ),
            ),
            InkWell(
              child: Container(
                width: 900,
                height: 900,
                //   color: Colors.purple.shade200,

                margin: EdgeInsets.only(top: 0),

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://miro.medium.com/max/10160/0*ziGX3Hr9MCvZBbtv'),
                    fit: BoxFit.cover,
                  ),
                ),
                //   width: 300,
                // height: 300,
                //decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(50),
                // ),
                child: Image.asset(
                  'images/Haymurpic.jpg',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 460),
              width: 280,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple.shade300, width: 3.0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: pause,
                    child: Icon(
                      Icons.pause,
                      color: Colors.purple.shade400,
                    ),
                  ),
                  FlatButton(
                    onPressed: playonline,
                    child: Icon(Icons.play_circle_filled,
                        size: 61, color: Colors.grey.shade400),
                  ),
                  FlatButton(
                    onPressed: stop,
                    child: Icon(Icons.stop, color: Colors.purple.shade400),
                  ),
                ],
              ),
            ),
          ],
        ),
        /*  Container(
          margin: EdgeInsets.all(30),
          width: 600,
          height: 600,
          decoration: BoxDecoration(
            color: Colors.purple.shade300,
            borderRadius: BorderRadius.circular(20),
          ),*/
        Container(
          padding: const EdgeInsets.only(
            //  Image.asset("images/Haymurpic.jpg"),
            left: 29,
            right: 29,
            top: 30,
            bottom: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: NetworkImage(
                  'https://miro.medium.com/max/10160/0*ziGX3Hr9MCvZBbtv'),
              fit: BoxFit.cover,
            ),
          ),
          child: new MyApp(),

          //   ),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 29,
            right: 29,
            top: 30,
            bottom: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: NetworkImage(
                  'https://miro.medium.com/max/10160/0*ziGX3Hr9MCvZBbtv'),
              fit: BoxFit.cover,
            ),
          ),
          child: MyApp1(),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 29,
            right: 29,
            top: 30,
            bottom: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: NetworkImage(
                  'https://miro.medium.com/max/10160/0*ziGX3Hr9MCvZBbtv'),
              fit: BoxFit.cover,
            ),
          ),
          //child: VideoPlayerApp(),
          child: MyApp2(),
        ),
      ],
    ),
  ),
);

home() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myHome,
  );
}
