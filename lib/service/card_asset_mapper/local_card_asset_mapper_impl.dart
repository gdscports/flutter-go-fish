import 'package:gdscports_go_fish_flutter/game_components/card.dart';
import 'package:gdscports_go_fish_flutter/service/card_asset_mapper/card_asset_mapper_interface.dart';

class LocalCardAssetMapperImpl implements CardAssetMapper {
  static const _localCardAssetPath = 'assets/cards/';

  @override
  String mapToAsset(Card card) {
    final suit = _mapSuitToLocalAssetPath(card.suit);
    final fileName = 'card_${suit}_${card.rank}.png';

    return '$_localCardAssetPath/${card.rank}/$fileName';
  }

  String _mapSuitToLocalAssetPath(Suit suit) {
    switch (suit) {
      case Suit.club:
        return 'clubs';
      case Suit.diamond:
        return 'diamonds';
      case Suit.heart:
        return 'hearts';
      case Suit.spade:
        return 'spades';
    }
  }
}
