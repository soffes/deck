//
//  Deck.swift
//  Deck
//
//  Created by Sam Soffes on 11/5/14.
//  Copyright (c) 2014 Sam Soffes. All rights reserved.
//

import Darwin

public class Deck {
	public var cards: [Card]

	public init() {
		var cards = [Card]()

		var s = 0
		var r = 1
		while let suit = Suit(rawValue: s) {
			while let rank = Rank(rawValue: r) {
				cards.append(Card(suit: suit, rank: rank))
				r++
			}
			s++
		}

		self.cards = cards
	}

	public func shuffle() {
		sorted(cards) {_, _ in arc4random() % 2 == 0}
	}

//	public func pop(numberOfCards: Int = 1) -> [Card] {
//		let range = advance(cards.endIndex, -numberOfCards)..<cards.endIndex
//		cards.removeRange(range)
//	}
}
