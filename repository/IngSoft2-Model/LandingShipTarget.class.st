Class {
	#name : 'LandingShipTarget',
	#superclass : 'EffectTarget',
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'action' }
LandingShipTarget >> reverse [
	^ AllButLandingShipTarget new
]

{ #category : 'action' }
LandingShipTarget >> targets: aSpaceship in: aGame [
	^OrderedCollection with: aSpaceship 
]
