import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LibaryPage extends StatefulWidget {
  @override
  _LibaryPageState createState() => _LibaryPageState();
}

class _LibaryPageState extends State<LibaryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  Widget customSearchBar = const Text(
    'Search',
    style: TextStyle(
      color: Colors.black,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
  );

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            color: Colors.black38,
            child: AppBar(
              backgroundColor: Colors.black38,
              title: const Text(
                'Search',
                style: TextStyle(color: Colors.white),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: MySearchDelegate(),
                    );
                  },
                  icon: const Icon(Icons.search),
                ),
              ],
            ),
          ),
          TabBar(
            unselectedLabelColor: Colors.black12,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: 'the most expensive',
              ),
              Tab(
                text: 'The most favorite',
              ),
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(
              children: [

                const Center(child: Text('the most expensive')),

                const Center(child: Text('The most favorite')),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  final List<String> searchResults = [
    'ملت عشق',
    'من او',
    'صد جنگ بزرگ تاریخ',
    'یک قرن سکوت',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          if (query.isEmpty)
            close(context, null);
          else
            query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
// TODO: Implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = searchResults.where((String searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
          },
        );
      },
    );
  }
}