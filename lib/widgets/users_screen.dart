import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const CupertinoSliverNavigationBar(
              largeTitle: Text('Пользователи'),
            )
          ];
        },
        body: ListView.builder(
          itemCount: 3,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: const BorderRadius.all(Radius.circular(13.0)),
                  border: Border.all(color: const Color(0x33000000)),
                ),
                width: 58.0,
                height: 60,
              ),
              title: const Text('Александр Покатаев'),
              subtitle: const Text('@user123'),
              trailing: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.more_vert),
              ),
            );
          },
        ),
      ),
    );
  }
}
