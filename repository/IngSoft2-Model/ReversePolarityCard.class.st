Class {
	#name : 'ReversePolarityCard',
	#superclass : 'PermanentCard',
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'action' }
ReversePolarityCard >> from: aSpaceship withTarget: anotherSpaceship useIn: aGame [
	self validateIfCardCanBePlayedBy: aSpaceship in: aGame.
	aGame addActiveCard: self.
]

{ #category : 'playing' }
ReversePolarityCard >> playOn: aSpaceship [

^0.
]
