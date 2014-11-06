//
//  Rank.swift
//  Deck
//
//  Created by Sam Soffes on 11/5/14.
//  Copyright (c) 2014 Sam Soffes. All rights reserved.
//

public enum Rank: Int {
	case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
	case Jack, Queen, King, Ace
	
	public var shortDescription: String {
		switch self {
		case .Jack:
			return "J"
		case .Queen:
			return "Q"
		case .King:
			return "K"
		case .Ace:
			return "A"
		default:
			return String(self.rawValue)
		}
	}

	public var description: String {
		switch self {
		case .Two:
			return "Two"
		case .Three:
			return "Three"
		case .Four:
			return "Four"
		case .Five:
			return "Five"
		case .Six:
			return "Six"
		case .Seven:
			return "Seven"
		case .Eight:
			return "Eight"
		case .Nine:
			return "Nine"
		case .Ten:
			return "Ten"
		case .Jack:
			return "Jack"
		case .Queen:
			return "Queen"
		case .King:
			return "King"
		case .Ace:
			return "Ace"
		}
	}
}


// MARK: - Comparable

public func ==(x: Rank, y: Rank) -> Bool {
	return x.rawValue == y.rawValue
}

public func <(x: Rank, y: Rank) -> Bool {
	return x.rawValue < y.rawValue
}
