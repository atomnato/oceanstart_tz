import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oceanstart_tz/widgets/utilities/description_tile.dart';

class UserInformationScreen extends StatelessWidget {
  const UserInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 16.0, right: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 107.0,
                    height: 110.0,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25.0)),
                      border: Border.all(
                        color: const Color(0x33000000),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Александр Покатаев",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "@user123",
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Theme.of(context).textTheme.caption!.color,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24.0,
              ),
              const DescriptionTile(
                title: "ул. Красная Площадь д.1",
                icon: CupertinoIcons.location_solid,
              ),
              const SizedBox(
                height: 8.0,
              ),
              const DescriptionTile(
                title: "atomnato00000@gmail.com",
                icon: CupertinoIcons.mail,
              ),
              const SizedBox(
                height: 8.0,
              ),
              const DescriptionTile(
                title: "+ 7 (915)-221-89-83",
                icon: CupertinoIcons.phone,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "riverstart.ru",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Divider(
                color: Color(0x59c4c3c3),
              )
            ],
          ),
        ),
      ),
    );
  }
}
