Class {
	#name : 'ActiveCardSelection',
	#superclass : 'Object',
	#instVars : [
		'affectedSpaceship',
		'cardClass',
		'mercenary'
	],
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'accessing' }
ActiveCardSelection class >> affecting: aSpaceship ofType: aCardClass [

	^self new affecting: aSpaceship ofType: aCardClass mercenary: nil
]

{ #category : 'accessing' }
ActiveCardSelection class >> affecting: aSpaceship ofType: aCardClass mercenary: aMercenaryShip [

	^self new affecting: aSpaceship ofType: aCardClass mercenary: aMercenaryShip
]

{ #category : 'as yet unclassified' }
ActiveCardSelection >> activeCardIn: aGame [

	^aGame activeCardFor: affectedSpaceship ofType: cardClass mercenary: mercenary.
]

{ #category : 'as yet unclassified' }
ActiveCardSelection >> affecting: aSpaceship ofType: aCardClass mercenary: aMercenaryShip [
	
	affectedSpaceship := aSpaceship .
	cardClass := aCardClass .
	mercenary := aMercenaryShip
]
