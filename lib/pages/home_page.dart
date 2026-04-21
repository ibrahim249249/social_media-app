import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_app/model/friends.dart';
import 'package:social_media_app/model/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF251F1F),
        elevation: 0,
        // title: GoogleFonts.eater(

        //   fontSize: 30,
        //   color: Colors.white,
        // ),
        title: Text(
          'TimeLine',
          style: GoogleFonts.eater(fontSize: 30, color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
            iconSize: 35,
          ),
        ],
      ),
      backgroundColor: Color(0xFF251F1F),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              //color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: favorite.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    height: 100,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF3A3740),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 3,
                              color: Color(0xFFfe8057).withOpacity(0.8),
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: AssetImage(favorite[index].imageUrl!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          height: 70,
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              favorite[index].name,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          color: Color(0xFFfe8057).withOpacity(0.8),
                          height: 10,
                          indent: 5,
                          endIndent: 5,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            _buildPosts(0),
            _buildPosts(1),
            _buildPosts(2),
            _buildPosts(3),
          ],
        ),
      ),
    );
  }
}

_buildPosts(int index) {
  return Container(
    margin: EdgeInsets.all(15),
    height: 500,
    //color: Colors.white,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              //margin: EdgeInsets.all(10),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  width: 3,
                  color: Color(0xFFfe8057).withOpacity(0.8),
                ),
              ),
              child: Container(
                //margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                    image: AssetImage(posts[index].friend!.imageUrl!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  posts[index].friend!.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
            Text(
              posts[index].timePosted!,
              style: TextStyle(
                color: Colors.white54,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(posts[index].imageUrl!),
            ),
          ),
        ),
        Container(
          height: 50,
          //color: Colors.white54,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.mode_comment, size: 30, color: Colors.white54),
                    SizedBox(width: 5),
                    Text(
                      posts[index].comments!,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '|',
                      style: TextStyle(fontSize: 30, color: Colors.white54),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.share, size: 30, color: Colors.white54),
                    SizedBox(width: 5),
                    Text(
                      posts[index].comments!,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      posts[index].comments!,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.thumb_up, size: 30, color: Colors.white54),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              posts[index].description!,
              style: TextStyle(fontSize: 14, color: Colors.white54),
            ),
          ),
        ),
      ],
    ),
  );
}
