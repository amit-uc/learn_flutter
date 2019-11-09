import 'package:flutter/material.dart';
import 'quote.dart';
import 'qoute_card.dart';

void main() => runApp(MaterialApp(
  home: QuotesList(),
));

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(text: 'All that we are is the result of what we have thought', author: 'Buddha'),
    Quote(text: 'I have no special talent. I am only passionately curious.', author: 'Albert Einstein'),
    Quote(text: 'If you judge people, you have no time to love them.', author: 'Mother Teresa'),
//    Quote(text: 'Wisely, and slow. They stumble that run fast.', author: 'William Shakespeare')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QouteCard(
          qoute: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
      ),
    );
  }
}

