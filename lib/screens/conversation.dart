import 'package:flutter/material.dart';
import '../components/chat.dart';
import '../components/story.dart';

class Conversations extends StatefulWidget {
  const Conversations({Key? key}) : super(key: key);

  @override
  _ConversationsState createState() => _ConversationsState();
}

TextEditingController _searchController = new TextEditingController();

class _ConversationsState extends State<Conversations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left:20, right:20, top:15),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                        ),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                  const Text(
                  "Chats",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.edit)
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  controller: _searchController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    hintText: "Search",
                    border: InputBorder.none
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              stories(),
              const SizedBox(
                height: 20,
              ),
              chat(context)
            ],
          ),
        ),
      ),
    );
  }
}