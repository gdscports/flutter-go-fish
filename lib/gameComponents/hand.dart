import 'card.dart';

class Hand {
  List<Card> cards = [];

  void shuffle() {
    cards.shuffle();
  }
}
