Class {
	#name : 'SquareSelection',
	#superclass : 'Object',
	#instVars : [
		'squareNumber'
	],
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'accessing' }
SquareSelection class >> at: aSquareNumber [

	^self new initializeAt: aSquareNumber
]

{ #category : 'comparing' }
SquareSelection >> = anotherSquareSelection [
	
	^squareNumber = anotherSquareSelection squareNumber
]

{ #category : 'action' }
SquareSelection >> applyReversePolarityIn: aGame [
	
	(self squareIn: aGame) reverseEffectTargeting .

	
]

{ #category : 'comparing' }
SquareSelection >> hash [
	^squareNumber hash
]

{ #category : 'accessing' }
SquareSelection >> initializeAt: aSquareNumber [
	squareNumber:= aSquareNumber
]

{ #category : 'accessing' }
SquareSelection >> squareIn: aGame [
	^aGame squareAt: squareNumber 
]

{ #category : 'accessing' }
SquareSelection >> squareNumber [

	^squareNumber
]
