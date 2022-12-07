import 'card.dart';
import 'hand.dart';

class Deck {
  List<Hand> _hands = [];
  List<Card> _cards;

  Deck(List<Card> cards) : _cards = cards;

  factory Deck.shuffled() {
    List<Card> cards = [];
    for (final suit in Suit.values) {
      for (final rank in ranks.entries) {
        cards.add(
          Card(
            suit,
            rank.key,
            'cards/${suit.name}s/card_${suit.name}s_${rank.key}.png',
          ),
        );
      }
    }
    cards.shuffle();
    return Deck(cards);
  }

  void shuffle() {
    _cards.shuffle();
  }

  void shuffleHand(int hand) {
    _hands[hand].shuffle();
  }

  List<Card> get deck => _cards;

  List<Card> getHand(int hand) {
    return _hands[hand].cards;
  }
}
