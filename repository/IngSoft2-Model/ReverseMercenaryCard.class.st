Class {
	#name : 'ReverseMercenaryCard',
	#superclass : 'PermanentCard',
	#instVars : [
		'ally',
		'mercenary'
	],
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'initialization' }
ReverseMercenaryCard class >> forAlly: anAlly mercenary: aMercenary [
	
	^self new initializeForAlly: anAlly mercenary: aMercenary
]

{ #category : 'action' }
ReverseMercenaryCard >> from: aSpaceship withTarget: anotherSpaceship useIn: aGame [
	self validateIfCardCanBePlayedBy: aSpaceship in: aGame.
	self validateAllianceBetween: aSpaceship and: anotherSpaceship .
	aGame validateMercenaryAvailability: anotherSpaceship .
	mercenary:=anotherSpaceship.
	ally := aSpaceship.
	aGame addActiveCard: self.
]

{ #category : 'initialization' }
ReverseMercenaryCard >> initializeForAlly: anAlly mercenary: aMercenary [

	ally := anAlly.
	mercenary := aMercenary.
	^self.
]

{ #category : 'testing' }
ReverseMercenaryCard >> is: aSpaceship anAllyOf: anotherSpaceship [

^((aSpaceship = ally) and: anotherSpaceship = mercenary) or: ((aSpaceship = mercenary ) and: anotherSpaceship = ally)
]

{ #category : 'accessing' }
ReverseMercenaryCard >> mercenary [
^mercenary
]

{ #category : 'playing' }
ReverseMercenaryCard >> playOn: aSpaceship [

^0.
]

{ #category : 'action' }
ReverseMercenaryCard >> reduceShieldsOfAllyOf: aSpaceship against: anOpponent in: aGame [

anOpponent =ally ifTrue: [ aGame decreaseShieldByOneOf:  mercenary. ].
]

{ #category : 'action' }
ReverseMercenaryCard >> reinforce: aSpaceship against: anOpponent in: aGame [


anOpponent = ally ifTrue: [ ^aGame throwDice ].
^0.
]

{ #category : 'as yet unclassified' }
ReverseMercenaryCard >> reverse [ 
	^MercenaryCard forAlly: ally mercenary: mercenary
]

{ #category : 'dispatching' }
ReverseMercenaryCard >> targets [ 

	^ally
]

{ #category : 'validation' }
ReverseMercenaryCard >> validateAllianceBetween: aSpaceship and: anotherSpaceship [
	aSpaceship = anotherSpaceship ifTrue: [ Error signal: 'A spaceship cannot be its own mercenary' ]
]
