Class {
	#name : 'ReversalCard',
	#superclass : 'Object',
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'instance creation' }
ReversalCard >> from: aSpaceship withTarget: aCard useIn: aGame [
	
	|reverseCard |
	
	reverseCard := aCard reverse.
	aGame replaceActiveCard: aCard with: reverseCard.
]
