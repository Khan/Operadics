//
//  Operators.swift
//  Operadics
//
//  Created by Robert Widmann on 07/07/2015.
//  Copyright (c) 2015 TypeLift. All rights reserved.
//  Released under the MIT License.
//
// Precedence marks for certain symbols aligned with Runes 
// ~( https://github.com/thoughtbot/Runes/blob/master/Source/Runes.swift ) until Swift gets a proper
// resolver.

// MARK: Control.*

/// Fmap | Maps a function over the value encapsulated by a functor.
infix operator <^> {
	associativity left
	// https://github.com/thoughtbot/Runes/blob/master/Source/Runes.swift
	precedence 130
}

/// Ap | Applies a function encapsulated by a functor to the value encapsulated by another functor.
infix operator <*> {
	associativity left
	// https://github.com/thoughtbot/Runes/blob/master/Source/Runes.swift
	precedence 130
}

/// Bind | Sequences and composes two monadic actions by passing the value inside the monad on the
/// left to a function on the right yielding a new monad.
infix operator >>- {
	associativity left
	// https://github.com/thoughtbot/Runes/blob/master/Source/Runes.swift
	precedence 100
}

/// Bind Backwards | Composes two monadic actions by passing the value inside the monad on the 
/// right to the funciton on the left.
infix operator -<< {
	associativity right
	// https://github.com/thoughtbot/Runes/blob/master/Source/Runes.swift
	precedence 100
}
