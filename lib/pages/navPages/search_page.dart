import 'package:cityguideapp/misc/colors.dart';
import 'package:cityguideapp/widgets/app_large_text.dart';
import 'package:cityguideapp/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _searchText = '';
  List<String> _recentSearches = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: AppLargeText(text: "Explore the world",
        size: 22,),
      ),

      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: AppText(text: "search your location:",color: AppColors.textColor2,)
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                setState(() {
                  _searchText = text;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _recentSearches.length,
              itemBuilder: (context, index) {
                final recentSearch = _recentSearches[index];
                return Card(
                  child: ListTile(
                    title: Text(recentSearch),
                    onTap: () {
                      setState(() {
                        _searchText = recentSearch;
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
