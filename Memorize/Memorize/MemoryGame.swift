import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
	private(set) var cards: Array<Card>

	mutating func choose(card: Card) {}

	struct Card: Identifiable {
		var isFaceUp: Bool
		var isMatched: Bool
		var content: CardContent
		var id: Int
	}
}
