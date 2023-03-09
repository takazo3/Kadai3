import 'package:flutter/material.dart';
import 'album.dart';


class Play extends StatefulWidget {

  const Play({Key?key, required this.album }):super(key: key);
  final Album album;

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  bool selected = false;

  get onChanged => 0.1;
  double _value = 0.0;
  double _startValue = 0.0;

  double _endValue = 3000.0;

  void _changeSlider(double e) => setState(() {
        _value = e;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SafeArea(
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.chevron_left, size: 35)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              SizedBox(width: 350, height: 350, child: Image.asset(widget.album.imagePath)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 30),
          child: Column(
            children: [
              Text(widget.album.title,
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              Text(widget.album.artist,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
        Column(
          children: [
            Slider(
              value: _value,
              min: _startValue,
              max: _endValue,
              divisions: 300,
              activeColor: Colors.white,
              inactiveColor: Colors.black45,
              onChanged: _changeSlider,
              // onChanged: (double value) {
              //   setState(() {
              //
              //   });
              // },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${_startValue + _value}'),
                  Text(_endValue.toString()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.skip_previous,
                    size: 60,
                  ),
                  IconButton(
                    iconSize: 90,
                    icon: const Icon(Icons.play_circle),
                    onPressed: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    isSelected: selected,
                    selectedIcon: const Icon(Icons.pause_circle,color:Colors.white),
                  ),
                  const Icon(Icons.skip_next, size: 60),
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}


