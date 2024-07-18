import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1554080353-a576cf803bda?fm=jpg&w=3000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D'),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Chats',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              child: Icon(
                Icons.camera_alt,
                size: 20,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              child: Icon(
                Icons.edit,
                size: 20,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
            ),
          ),
        ],
        titleSpacing: 20,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 20,
                    ),
                    Text('search'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),

              // ListView Container Code Section for the Story
              Container(
                  color: Colors.white,
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                    itemCount: 10,
                  )),
              SizedBox(height: 20),
              // ListView Container Code Section for the chats
              Container(
                color: Colors.white,
                height: 550,
                width: 550,
                child: ListView.separated(
                  // This code for the scroll to make the whole page scroll up & down
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
                  itemCount: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryItem() => Container(
        width: 60,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1554080353-a576cf803bda?fm=jpg&w=3000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D'),
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.green,
                ),
              ],
            ),
            Text(
              'First Name Last Name',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1554080353-a576cf803bda?fm=jpg&w=3000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D'),
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 250,
                  child: Text(
                    'Mohanad Semida'
                    'Mohanad Semida'
                    'Mohanad Semida'
                    'Mohanad Semida'
                    'Mohanad Semida'
                    'Mohanad Semida'
                    'Mohanad Semida'
                    'Mohanad Semida'
                    'Mohanad Semida'
                    'Mohanad Semida',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Message from a friend or family',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('02:00 pm'),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
}
