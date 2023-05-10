import 'package:flutter/material.dart';

import '../Screen/suggestions_view.dart';
import 'complaints.dart';

class SuggestionsPage extends StatefulWidget {
  const SuggestionsPage({super.key});

  @override
  State<SuggestionsPage> createState() => _SuggestionsPageState();
}

class _SuggestionsPageState extends State<SuggestionsPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _tabBarViewChildren.length, vsync: this);

    /// i've used the length of the _tabBarViewChildren to avoid doing mistakes
    /// by overriding the value manually by hand [hard code] f.
  }

  final List<Widget> _tabBarViewChildren = [
    const ComplaintsPage(),
    const SuggestionsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForYou'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.warning), text: 'الشكاوى'),
            Tab(
              icon: Icon(Icons.lightbulb_outline),
              text: 'المقترحات',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabBarViewChildren,
        //   const SuggestionsPage(),
        //   // ComplaintsPage(),
      ),
    );
  }
}
