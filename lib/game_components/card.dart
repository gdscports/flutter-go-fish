enum Suit { heart, club, spade, diamond }

class Card {
  Suit suit;
  String rank;
  String imageURL;

  Card(this.suit, this.rank, this.imageURL);
}
