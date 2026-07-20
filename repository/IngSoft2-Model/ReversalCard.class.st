Class {
	#name : 'ReversalCard',
	#superclass : 'Object',
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'instance creation' }
ReversalCard >> from: aSpaceship withTarget: aSelection useIn: aGame [
	
	|activeCard reverseCard |
	
	activeCard :=  aSelection activeCardIn: aGame . 
	reverseCard := activeCard reverse.
	aGame replaceActiveCard: activeCard with: reverseCard.
	aGame recordLastCardPlayed: ReversalCard.
]
