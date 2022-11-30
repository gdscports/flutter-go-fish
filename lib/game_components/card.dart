enum Suit { heart, club, spade, diamond }

class Card {
  Suit suit;
  int rank;
  String imageURL;

  Card(this.suit, this.rank, this.imageURL);
}
