class CreditCards {
  final String cardNumber;
  final String cardHolder;
  final String expiryDate;

  CreditCards({
    required this.cardNumber,
    required this.cardHolder,
    required this.expiryDate,
  });
}

CreditCards card1 = CreditCards(
  cardNumber: '** 4851',
  cardHolder: 'Shaiyrbek Talaibek uulu',
  expiryDate: '12/25',
);
CreditCards card2 = CreditCards(
  cardNumber: '** 6343',
  cardHolder: 'Dooranov Hamza',
  expiryDate: '12/25',
);

List<CreditCards> creditCards = [card1, card2];
