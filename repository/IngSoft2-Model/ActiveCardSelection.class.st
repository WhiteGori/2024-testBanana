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

{ #category : 'as yet unclassified' }
ActiveCardSelection >> affecting: aSpaceship ofType: aCardClass [
	
	affectedSpaceship := aSpaceship .
	cardClass := aCardClass .
]
