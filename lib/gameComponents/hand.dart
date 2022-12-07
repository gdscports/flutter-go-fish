import 'card.dart';

class Hand {
  List<Card> _cards = [];

  void shuffle() {
    _cards.shuffle();
  }

  List<Card> getCards() {
    return _cards;
  }
}
