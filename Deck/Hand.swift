//
//  Hand.swift
//  Deck
//
//  Created by Sam Soffes on 11/5/14.
//  Copyright (c) 2014 Sam Soffes. All rights reserved.
//

public class Hand {
	public var cards = [Card]()

	public var suits: [Suit] {
		let all = map(cards) { $0.suit }

		var unique = [Suit]()
		for suit in all {
			if !contains(unique, suit) {
				unique.append(suit)
			}
		}
		return unique
	}

	public func addCard(card: Card) {
		cards.append(card)
	}

	public func empty() {
		cards = [Card]()
	}
}


// MARK: - Operators

public func << (inout left: Hand, right: Card) -> Hand {
	left.addCard(right)
	return left
}
