Class {
	#name : 'AccelerationCard',
	#superclass : 'PermanentCard',
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'action' }
AccelerationCard >> from: aSpaceship withTarget: anotherSpaceship useIn: aGame [
	self validateIfCardCanBePlayedBy: aSpaceship in: aGame.
	aGame addActiveCard: self.
]

{ #category : 'testing' }
AccelerationCard >> is: aSpaceship anAllyOf: anotherSpaceship [

^false.
]

{ #category : 'accessing' }
AccelerationCard >> mercenary [
^0
]

{ #category : 'playing' }
AccelerationCard >> playOn: aSpaceship [

^1
]

{ #category : 'action' }
AccelerationCard >> reduceShieldsOfAllyOf: aSpaceship against: anOpponent in: aGame [
]

{ #category : 'action' }
AccelerationCard >> reinforce: aSpaceship against: anOpponent in: aGame [

^0.
]

{ #category : 'as yet unclassified' }
AccelerationCard >> reverse [ 

 ^ReverseAccelerationCard new
]

{ #category : 'dispatching' }
AccelerationCard >> targets [

	^ nil
]

{ #category : 'validation' }
AccelerationCard >> validateAllianceBetween: aSpaceship and: anotherSpaceship [
]
