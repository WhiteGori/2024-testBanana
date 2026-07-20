"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  Increases dice result by one for a specific spaceship

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them.

Public API and Key Messages

- message one
- message two
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.

Internal Representation and Key Implementation Points.

    Instance Variables
	target:		<Object>


    Implementation Points
"
Class {
	#name : 'ReverseSpeedCard',
	#superclass : 'PermanentCard',
	#instVars : [
		'target'
	],
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'as yet unclassified' }
ReverseSpeedCard class >> forTarget: aSpaceship [

	^self new initializeForTarget: aSpaceship
]

{ #category : 'action' }
ReverseSpeedCard >> from: aSpaceship withTarget: anotherSpaceship useIn: aGame [
	self validateIfCardCanBePlayedBy: aSpaceship in: aGame.
	target := anotherSpaceship .
	aGame addActiveCard: self.
]

{ #category : 'initialization' }
ReverseSpeedCard >> initializeForTarget: aSpaceship [

	target := aSpaceship .
	^self.
]

{ #category : 'testing' }
ReverseSpeedCard >> is: aSpaceship anAllyOf: anotherSpaceship [

^false.
]

{ #category : 'accessing' }
ReverseSpeedCard >> mercenary [
^0
]

{ #category : 'playing' }
ReverseSpeedCard >> playOn: aSpaceship [
| cardModifier |
cardModifier:=0.
aSpaceship = target ifTrue:[cardModifier:= -1].
^cardModifier
]

{ #category : 'action' }
ReverseSpeedCard >> reduceShieldsOfAllyOf: aSpaceship against: anOpponent in: aGame [
]

{ #category : 'action' }
ReverseSpeedCard >> reinforce: aSpaceship against: anOpponent in: aGame [

^0.
]

{ #category : 'converting' }
ReverseSpeedCard >> reverse [ 

	^SpeedCard forTarget: target 
]

{ #category : 'dispatching' }
ReverseSpeedCard >> targets [ 

	^target
]

{ #category : 'validation' }
ReverseSpeedCard >> validateAllianceBetween: aSpaceship and: anotherSpaceship [
]
