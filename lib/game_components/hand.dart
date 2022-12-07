import 'card.dart';

class Hand {
  List<Card> _cards = [];

  void shuffle() {
    _cards.shuffle();
  }

  List<Card> get cards => _cards;
}
