//
//  Suit.swift
//  Deck
//
//  Created by Sam Soffes on 11/5/14.
//  Copyright (c) 2014 Sam Soffes. All rights reserved.
//

public enum Suit: Int, Comparable {
	case Clubs, Diamonds, Hearts, Spades

	public var shortDescription: String {
		switch self {
		case .Clubs:
			return "♣"
		case .Diamonds:
			return "♦"
		case .Hearts:
			return "♥"
		case .Spades:
			return "♠"
		}
	}

	public var description: String {
		switch self {
		case .Clubs:
			return "Clubs"
		case .Diamonds:
			return "Diamonds"
		case .Hearts:
			return "Hearts"
		case .Spades:
			return "Spades"
		}
	}
}


// MARK: - Comparable

public func ==(x: Suit, y: Suit) -> Bool {
	return x.rawValue == y.rawValue
}

public func <(x: Suit, y: Suit) -> Bool {
	return x.rawValue < y.rawValue
}
