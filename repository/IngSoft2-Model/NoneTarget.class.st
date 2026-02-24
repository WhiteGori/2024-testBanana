Class {
	#name : 'NoneTarget',
	#superclass : 'EffectTarget',
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'action' }
NoneTarget >> reverse [
	^ AllTarget new
]

{ #category : 'action' }
NoneTarget >> targets: aSpaceship in: aGame [
	
	^OrderedCollection new.
]
