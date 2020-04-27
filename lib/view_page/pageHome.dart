import 'package:flutter/material.dart';
import '../data/postData.dart';

class PageHome extends StatelessWidget {
  Widget _itemWight(PostData) {
    return SizedBox.expand(
      child: Stack(
        children: <Widget>[
          Center(
            child: Image.network(
              PostData.image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: Column(
              children: <Widget>[
                Text(PostData.title),
                Text(PostData.desc),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getItem(BuildContext buildContext, int index) {
    return SizedBox.expand(
      child: Stack(
        children: <Widget>[
          Center(child: Container(
            child: Image.network(_dataList[index].image,fit: BoxFit.cover,),
          )),
          Positioned(
            bottom: 16,
            right: 16,
            child: Column(
              children: <Widget>[
                Text(_dataList[index].title),
                Text(_dataList[index].desc),
              ],
            ),
          ),
        ],
      ),
    );
  }

  var _controller = PageController(initialPage: 0, viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Container(
        child:
            /*PageView(
        children: _dataList.map((e) => _itemWight(e)).toList(),
        scrollDirection: Axis.vertical,
      ),*/
            PageView.builder(
      itemCount: _dataList.length,
      itemBuilder: _getItem,
      scrollDirection: Axis.vertical,
      controller: _controller,
      onPageChanged: (index) {},
      allowImplicitScrolling: true,
    ));
  }
}

final List<PostData> _dataList = [
  PostData(
      name: 'nihao',
      image:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585478977179&di=de002fd7db5dfbccbdb0ad55e84b37bd&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201310%2F19%2F235356fyjkkugokokczyo0.jpg',
      title: 'title2',
      desc: 'desc2'),
  PostData(
      name: 'nihao',
      image:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585478977179&di=de002fd7db5dfbccbdb0ad55e84b37bd&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201310%2F19%2F235356fyjkkugokokczyo0.jpg',
      title: 'title3',
      desc: 'desc3'),
  PostData(
      name: 'nihao',
      image:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585478977179&di=de002fd7db5dfbccbdb0ad55e84b37bd&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201310%2F19%2F235356fyjkkugokokczyo0.jpg',
      title: 'title4',
      desc: 'desc4'),
  PostData(
      name: 'nihao',
      image:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585478977179&di=de002fd7db5dfbccbdb0ad55e84b37bd&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201310%2F19%2F235356fyjkkugokokczyo0.jpg',
      title: 'title5',
      desc: 'desc5'),
  PostData(
      name: 'nihao',
      image:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585478977179&di=de002fd7db5dfbccbdb0ad55e84b37bd&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201310%2F19%2F235356fyjkkugokokczyo0.jpg',
      title: 'title6',
      desc: 'desc6'),
  PostData(
      name: 'nihao',
      image:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585478977179&di=de002fd7db5dfbccbdb0ad55e84b37bd&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201310%2F19%2F235356fyjkkugokokczyo0.jpg',
      title: 'title7',
      desc: 'desc7'),
  PostData(
      name: 'nihao',
      image:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585478977179&di=de002fd7db5dfbccbdb0ad55e84b37bd&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201310%2F19%2F235356fyjkkugokokczyo0.jpg',
      title: 'title8',
      desc: 'desc8'),
  PostData(
      name: 'nihao',
      image:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585478977179&di=de002fd7db5dfbccbdb0ad55e84b37bd&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201310%2F19%2F235356fyjkkugokokczyo0.jpg',
      title: 'title9',
      desc: 'desc9'),
  PostData(
      name: 'nihao',
      image:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585478977179&di=de002fd7db5dfbccbdb0ad55e84b37bd&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201310%2F19%2F235356fyjkkugokokczyo0.jpg',
      title: 'title10',
      desc: 'desc10'),
  PostData(
      name: 'nihao',
      image:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585478977179&di=de002fd7db5dfbccbdb0ad55e84b37bd&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201310%2F19%2F235356fyjkkugokokczyo0.jpg',
      title: 'title11',
      desc: 'desc11'),
  PostData(
      name: 'nihao',
      image:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585478977179&di=de002fd7db5dfbccbdb0ad55e84b37bd&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201310%2F19%2F235356fyjkkugokokczyo0.jpg',
      title: 'title12',
      desc: 'desc12'),
];
