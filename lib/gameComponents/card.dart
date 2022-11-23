enum Suit { heart, club, spade, diamond }

Map<String, String> ranks = {
  'A': 'Ace',
  '2': 'Two',
  '3': 'Three',
  '4': 'Four',
  '5': 'Five',
  '6': 'Six',
  '7': 'Seven',
  '8': 'Eight',
  '9': 'Nine',
  '10': 'Ten',
  'J': 'Jack',
  'K': 'Queen',
  'Q': 'King',
};

class Card {
  Suit suit;
  String rank;
  String imageURL;

  Card(this.suit, this.rank, this.imageURL);
}

// String to access card's image: 'cards/${suit.name}s/card_${suit.name}s_$rank.png'