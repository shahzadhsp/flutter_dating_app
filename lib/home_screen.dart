import 'package:flutter/material.dart';
import 'package:flutter_dating_app/custom_widgets/custom_appbar.dart';
import 'package:flutter_dating_app/custom_widgets/custom_container.dart';

import 'custom_widgets/title_with_icon.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 7,
            ),
            CustomAppBar(
              title: 'PROFILE',
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(3, 3),
                              blurRadius: 3,
                              spreadRadius: 3)
                        ],
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.pexels.com/photos/8929487/pexels-photo-8929487.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        gradient: LinearGradient(
                          colors: [
                            Theme.of(context).primaryColor.withOpacity(0.1),
                            Theme.of(context).primaryColor.withOpacity(0.5)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text(
                            'Salal Haider',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TitleWithIcon(
                        title: 'BioGraphy',
                        icon: Icons.edit,
                      ),
                      Text(
                        'James Goslin OC is a Computer Scientist. best Known as the founder and lead designer behind the java programming Language',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(height: 1.5),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      TitleWithIcon(
                        title: 'Pictures',
                        icon: Icons.edit,
                      ),
                      SizedBox(
                        height: 125,
                        child: ListView.builder(
                          itemCount: 5,
                          cacheExtent: 5,
                          shrinkWrap: true,

                          // physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 6.0),
                              child: Container(
                                height: double.infinity,
                                width: 230,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context).primaryColor),
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://images.pexels.com/photos/8929487/pexels-photo-8929487.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      TitleWithIcon(
                        title: 'Location',
                        icon: Icons.edit,
                      ),
                      Text(
                        'Pakistan , Bahawalpur city ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(height: 1.5),
                      ),
                      TitleWithIcon(
                        title: 'Interests',
                        icon: Icons.edit,
                      ),
                      Row(
                        children: [
                          CustomTextContainer(title: 'MUSIC'),
                          CustomTextContainer(title: 'ECONOMICS'),
                          CustomTextContainer(title: 'FOOTBALL'),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
