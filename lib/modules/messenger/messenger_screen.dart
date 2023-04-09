import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://scontent.faly1-2.fna.fbcdn.net/v/t39.30808-6/285162072_3174753062792229_7936393678037174101_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEPcd_msEcUnruTKZDohoLghU6-Ev76qDaFTr4S_vqoNm6IfI7gVKD8xaxMLRHHoeflLJECp1zyht3-JyJ1xBEo&_nc_ohc=a1sf_LLj8FcAX9qo7pa&_nc_ht=scontent.faly1-2.fna&oh=00_AfBcYmApNq6L_VsFyrOOUTq2K7EAieT95mHUKQakgEQIsQ&oe=63693315'),

            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,

              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 16.0,
                color: Colors.white,
              ),
            ),
              onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0,),
                color: Colors.grey[300],
              ),
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'Search',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: [
                    Container(
                      width: 60.0,
                      child: Column(
                        children: [
                         Stack(
                           alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0,
                                  end: 3.0,
                                ),
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage('https://scontent.faly1-2.fna.fbcdn.net/v/t39.30808-6/285162072_3174753062792229_7936393678037174101_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEPcd_msEcUnruTKZDohoLghU6-Ev76qDaFTr4S_vqoNm6IfI7gVKD8xaxMLRHHoeflLJECp1zyht3-JyJ1xBEo&_nc_ohc=a1sf_LLj8FcAX9qo7pa&_nc_ht=scontent.faly1-2.fna&oh=00_AfBcYmApNq6L_VsFyrOOUTq2K7EAieT95mHUKQakgEQIsQ&oe=63693315'),

                                ),
                              ),
                              CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.red,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Merna Elzyat',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      width: 60.0,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0,
                                  end: 3.0,
                                ),
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage('https://scontent.faly1-2.fna.fbcdn.net/v/t39.30808-6/285162072_3174753062792229_7936393678037174101_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEPcd_msEcUnruTKZDohoLghU6-Ev76qDaFTr4S_vqoNm6IfI7gVKD8xaxMLRHHoeflLJECp1zyht3-JyJ1xBEo&_nc_ohc=a1sf_LLj8FcAX9qo7pa&_nc_ht=scontent.faly1-2.fna&oh=00_AfBcYmApNq6L_VsFyrOOUTq2K7EAieT95mHUKQakgEQIsQ&oe=63693315'),

                                ),
                              ),
                              CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.red,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Merna Elzyat',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      width: 60.0,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0,
                                  end: 3.0,
                                ),
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage('https://scontent.faly1-2.fna.fbcdn.net/v/t39.30808-6/285162072_3174753062792229_7936393678037174101_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEPcd_msEcUnruTKZDohoLghU6-Ev76qDaFTr4S_vqoNm6IfI7gVKD8xaxMLRHHoeflLJECp1zyht3-JyJ1xBEo&_nc_ohc=a1sf_LLj8FcAX9qo7pa&_nc_ht=scontent.faly1-2.fna&oh=00_AfBcYmApNq6L_VsFyrOOUTq2K7EAieT95mHUKQakgEQIsQ&oe=63693315'),

                                ),
                              ),
                              CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.red,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Merna Elzyat',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      width: 60.0,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0,
                                  end: 3.0,
                                ),
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage('https://scontent.faly1-2.fna.fbcdn.net/v/t39.30808-6/285162072_3174753062792229_7936393678037174101_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEPcd_msEcUnruTKZDohoLghU6-Ev76qDaFTr4S_vqoNm6IfI7gVKD8xaxMLRHHoeflLJECp1zyht3-JyJ1xBEo&_nc_ohc=a1sf_LLj8FcAX9qo7pa&_nc_ht=scontent.faly1-2.fna&oh=00_AfBcYmApNq6L_VsFyrOOUTq2K7EAieT95mHUKQakgEQIsQ&oe=63693315'),

                                ),
                              ),
                              CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.red,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Merna Elzyat',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      width: 60.0,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0,
                                  end: 3.0,
                                ),
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage('https://scontent.faly1-2.fna.fbcdn.net/v/t39.30808-6/285162072_3174753062792229_7936393678037174101_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEPcd_msEcUnruTKZDohoLghU6-Ev76qDaFTr4S_vqoNm6IfI7gVKD8xaxMLRHHoeflLJECp1zyht3-JyJ1xBEo&_nc_ohc=a1sf_LLj8FcAX9qo7pa&_nc_ht=scontent.faly1-2.fna&oh=00_AfBcYmApNq6L_VsFyrOOUTq2K7EAieT95mHUKQakgEQIsQ&oe=63693315'),

                                ),
                              ),
                              CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.red,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Merna Elzyat',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),

                        ],
                      ),
                    ),
                  ],
                ),

            ),

            


          ],
        ),
      ),
    );
  }
}
