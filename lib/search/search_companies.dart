import 'package:flutter/material.dart';
import 'package:linkedin_clone/widgets/bottomNavBar.dart';

class AllWorkersScreen extends StatefulWidget {
  @override
  _AllWorkersScreenState createState() => _AllWorkersScreenState();
}

class _AllWorkersScreenState extends State<AllWorkersScreen> {
  TextEditingController _seacrchQueryController = TextEditingController();
  String searchQuery = 'Search Query';

  Widget _buildSearchField() {
    return TextField(
      controller: _seacrchQueryController,
      autocorrect: true,
      decoration: InputDecoration(
        hintText: 'Search for companies...',
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.white30),
      ),
      style: TextStyle(color: Colors.white, fontSize: 16.0),
      onChanged: (query) => updateSearchQuery(query),
    );
  }

  List<Widget> _buildActions() {
    return <Widget>[
      IconButton(
        onPressed: () {
          _clearSearchQuery();
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  void updateSearchQuery(String newQuery) {
    setState(() {
      searchQuery = newQuery;
      print(searchQuery);
    });
  }

  void _clearSearchQuery() {
    setState(() {
      _seacrchQueryController.clear();
      updateSearchQuery('');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarForApp(
        indexNum: 1,
      ),
      appBar: AppBar(
        backgroundColor: Colors.white10,
        automaticallyImplyLeading: false,
        title: _buildSearchField(),
        actions: _buildActions(),
      ),
    );
  }
}
