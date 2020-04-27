import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class CountModel extends Model {
  int _count = 0;

  int get count => _count;

  inCreaseCount() {
    _count += 1;
    notifyListeners();
  }
}

class ChildDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CountModel>(
      builder: (context, child, model) => Center(
        child: ActionChip(
          label: Text('${model.count}'),
          onPressed: () {
            if(model!=null)
            model.inCreaseCount();
          },
        ),
      ),
    );
  }
}

class ModelDataDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<CountModel>(
      model: new CountModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('ModelDataDemo'),
        ),
        floatingActionButton: new ScopedModelDescendant<CountModel>(
          builder: (context, child, model) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              if(model!=null)
                model.inCreaseCount();
            },
          ),
        ),
        body: ChildDemo(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 80,
          ),
        ),
      ),
    );
  }
}

