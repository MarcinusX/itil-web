import 'package:flutter/material.dart';

class CenterText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const CenterText(this.text, {Key key, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: TextAlign.center,
    );
  }
}

class MyCard extends StatelessWidget {
  final bool imageOnLeft;
  final String imageUrl;
  final String title;
  final Widget text;
  final String readMorePage;
  final EdgeInsets imagePadding;
  final double imageHeight;

  const MyCard({
    Key key,
    @required this.text,
    this.imageOnLeft = true,
    this.imageUrl,
    this.title,
    this.readMorePage,
    this.imagePadding = EdgeInsets.zero,
    this.imageHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Colors.white,
      margin: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          if (imageOnLeft && imageUrl != null) ...[
            Expanded(
              flex: 1,
              child: Padding(
                padding: imagePadding,
                child: Image.network(
                  imageUrl,
                  height: imageHeight,
                ),
              ),
            ),
            SizedBox(width: 16),
          ],
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                SizedBox(height: 16),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  child: text,
                ),
                if (readMorePage != null) ...[
                  RaisedButton(
                    child: Text('Więcej...'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pushNamed(readMorePage);
                    },
                  ),
                  SizedBox(height: 32),
                ],
              ],
            ),
          ),
          if (!imageOnLeft && imageUrl != null) ...[
            SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: Padding(
                padding: imagePadding,
                child: Image.network(
                  imageUrl,
                  height: imageHeight,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
