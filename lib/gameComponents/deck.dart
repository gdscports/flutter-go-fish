import 'card.dart';
import 'hand.dart';

class Deck {
  List<Hand> hands = [];
  List<Card> cards = [];

  Deck() {
    for (var suit in Suit.values) {
      for (var rank in ranks.entries) {
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
  }

  void shuffle() {
    cards.shuffle();
  }

  void shuffleHand(int hand) {
    hands[hand].shuffle();
  }
}
