Class {
	#name : 'AllButLandingShipTarget',
	#superclass : 'EffectTarget',
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'action' }
AllButLandingShipTarget >> reverse [ 
	^ LandingShipTarget new.
]

{ #category : 'action' }
AllButLandingShipTarget >> targets: aSpaceship in: aGame [
	
	|targetSpaceships|
	
	targetSpaceships := aGame players select:[ :spaceship | spaceship ~= aSpaceship .].
	^targetSpaceships .
]
