import 'package:flutter/material.dart';
import 'custom_widgets/blog_item.dart';

class BlogPage extends StatelessWidget {
  final String dataFromLoginPage;
  BlogPage({required this.dataFromLoginPage});

  List<Widget> widgetBlogList({required BuildContext context}) => [
        widgetBlogItem(
          imagePath: "images/rich.png",
          title: 'Top 10 Tips to retired at 40 years old',
          subtitle: 'The best tips to retired early',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          context: context,
        ),
        widgetBlogItem(
          imagePath: "images/house.png",
          title: 'How to purchase a property in 5 steps',
          subtitle: 'You must acknowledge this before shopping',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          context: context,
        ),
        widgetBlogItem(
          imagePath: "images/apps.png",
          title: '7 Apps to increase productivity',
          subtitle: 'These apps will boost your daily task',
          description:
              'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
          context: context,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            'The Blog',
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: List.generate(
                      widgetBlogList(context: context).length,
                      (index) => widgetBlogList(context: context)[index]),
                ),
                TextButton(
                  onPressed: () {
                    debugPrint('Term and Conditions');
                  },
                  style: TextButton.styleFrom(
                      primary: Colors.blueGrey[900],
                      minimumSize: const Size(double.infinity, 45),
                      elevation: 0),
                  child: const Text(
                    'Term and Conditions',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                      primary: Colors.red,
                      minimumSize: const Size(double.infinity, 45),
                      elevation: 0),
                  child: const Text(
                    'Sign out',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
