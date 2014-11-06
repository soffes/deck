//
//  Card.swift
//  Deck
//
//  Created by Sam Soffes on 11/5/14.
//  Copyright (c) 2014 Sam Soffes. All rights reserved.
//

public struct Card: Comparable {
	public let suit: Suit
	public let rank: Rank

	public var shortDescription: String {
		return "\(suit.shortDescription)\(rank.shortDescription)"
	}

	public var description: String {
		return "\(rank.description) of \(suit.description)"
	}

	public init(suit: Suit, rank: Rank) {
		self.suit = suit
		self.rank = rank
	}
}


// MARK: - Comparable

public func ==(x: Card, y: Card) -> Bool {
	return x.rank == y.rank
}

public func <(x: Card, y: Card) -> Bool {
	return x.rank < y.rank
}
