Class {
	#name : 'ReversePolarityCard',
	#superclass : 'PermanentCard',
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'action' }
ReversePolarityCard >> from: aSpaceship withTarget: anotherSpaceship useIn: aGame [
	self validateIfCardCanBePlayedBy: aSpaceship in: aGame.
	anotherSpaceship applyReversePolarityIn: aGame.
	aGame addActiveCard: self.
]

{ #category : 'testing' }
ReversePolarityCard >> is: aSpaceship anAllyOf: anotherSpaceship [

^false.
]

{ #category : 'accessing' }
ReversePolarityCard >> mercenary [
^0
]

{ #category : 'playing' }
ReversePolarityCard >> playOn: aSpaceship [

^0.
]

{ #category : 'action' }
ReversePolarityCard >> reduceShieldsOfAllyOf: aSpaceship in: aGame [
]

{ #category : 'action' }
ReversePolarityCard >> reinforce: aSpaceship in: aGame [

^0.
]

{ #category : 'validation' }
ReversePolarityCard >> validateAllianceBetween: aSpaceship and: anotherSpaceship [
]
