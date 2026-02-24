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

{ #category : 'action' }
SquareSelection >> applyReversePolarityIn: aGame [
	
	(self squareIn: aGame) reverseEffectTargeting .

	
]

{ #category : 'accessing' }
SquareSelection >> initializeAt: aSquareNumber [
	squareNumber:= aSquareNumber
]

{ #category : 'accessing' }
SquareSelection >> squareIn: aGame [
	^aGame squareAt: squareNumber 
]
