Class {
	#name : 'ReverseAccelerationCard',
	#superclass : 'PermanentCard',
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'action' }
ReverseAccelerationCard >> from: aSpaceship withTarget: anotherSpaceship useIn: aGame [
	self validateIfCardCanBePlayedBy: aSpaceship in: aGame.
	aGame addActiveCard: self.
]

{ #category : 'testing' }
ReverseAccelerationCard >> is: aSpaceship anAllyOf: anotherSpaceship [

^false.
]

{ #category : 'accessing' }
ReverseAccelerationCard >> mercenary [
^0
]

{ #category : 'playing' }
ReverseAccelerationCard >> playOn: aSpaceship [

^-1
]

{ #category : 'action' }
ReverseAccelerationCard >> reduceShieldsOfAllyOf: aSpaceship against: anOpponent in: aGame [
]

{ #category : 'action' }
ReverseAccelerationCard >> reinforce: aSpaceship against: anOpponent in: aGame [

^0.
]

{ #category : 'dispatching' }
ReverseAccelerationCard >> targets [

	^nil 
]

{ #category : 'validation' }
ReverseAccelerationCard >> validateAllianceBetween: aSpaceship and: anotherSpaceship [
]
