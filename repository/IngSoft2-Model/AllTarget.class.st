Class {
	#name : 'AllTarget',
	#superclass : 'EffectTarget',
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'action' }
AllTarget >> reverse [
	^ NoneTarget new
]

{ #category : 'action' }
AllTarget >> targets: aSpaceship in: aGame [
	
	^aGame players .
]
