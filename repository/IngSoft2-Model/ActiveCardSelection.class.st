Class {
	#name : 'ActiveCardSelection',
	#superclass : 'Object',
	#instVars : [
		'affectedSpaceship',
		'cardClass'
	],
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'accessing' }
ActiveCardSelection class >> affecting: aSpaceship ofType: aCardClass [

	^self new affecting: aSpaceship ofType: aCardClass
]

{ #category : 'as yet unclassified' }
ActiveCardSelection >> activeCardIn: aGame [

	^aGame activeCardFor: affectedSpaceship ofType: cardClass.
]

{ #category : 'as yet unclassified' }
ActiveCardSelection >> affecting: aSpaceship ofType: aCardClass [
	
	affectedSpaceship := aSpaceship .
	cardClass := aCardClass .
]
