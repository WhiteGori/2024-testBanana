Class {
	#name : 'EffectTarget',
	#superclass : 'Object',
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'action' }
EffectTarget >> reverse [
	self subclassResponsibility 
]

{ #category : 'action' }
EffectTarget >> targets: aSpaceship in: aGame [
	self subclassResponsibility.
]
