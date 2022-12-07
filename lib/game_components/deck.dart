import 'package:gdscports_go_fish_flutter/service/card_asset_mapper/card_asset_mapper_interface.dart';

import 'card.dart';
import 'hand.dart';

class Deck {
  List<Hand> _hands = [];
  List<Card> _cards;

  Deck(List<Card> cards) : _cards = cards;

  factory Deck.shuffled(CardAssetMapper cardAssetMapper) {
    List<Card> cards = [];
    for (final suit in Suit.values) {
      for (int i = 0; i < 13; i++) {
        cards.add(
          Card(
            suit,
            i.toString(),
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
