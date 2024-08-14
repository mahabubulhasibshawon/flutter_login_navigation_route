import 'package:flutter/material.dart';
import 'package:flutter_login_navigation_route/routes.dart';
import 'package:go_router/go_router.dart';
import '../data/dummy/dummy_products.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var textSize = MediaQuery.of(context).textScaler;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Blog',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: textSize.scale(28)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.9, vertical: 6.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () => context.goNamed(Routes.product, extra: {'id': blogs[index].id.toString()}),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23)),
                tileColor: Colors.amber.shade300,
                title: Text(
                  blogs[index].title,
                  style: TextStyle(
                      fontSize: textSize.scale(18),
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Author: ${blogs[index].author}'),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      blogs[index].content,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, state) => const Divider(),
            itemCount: blogs.length),
      ),
    );
  }
}
