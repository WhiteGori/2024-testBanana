"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  Squares with this effect teleport spaceships to the other side of the wormhole

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them.

Public API and Key Messages

- message one
- message two
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.

Internal Representation and Key Implementation Points.

    Instance Variables
	otherSide:		<Object>


    Implementation Points
"
Class {
	#name : 'WormholeEffect',
	#superclass : 'Object',
	#instVars : [
		'otherSide',
		'myPosition',
		'targeting'
	],
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'instance creation' }
WormholeEffect class >> isIn: aPosition goesTo: anotherPosition [

^self new initializeIsIn: aPosition goesTo: anotherPosition.
]

{ #category : 'action' }
WormholeEffect >> applyIn: aGame for: aSpaceship [ 
	
	|target|
	
	target := targeting targets: aSpaceship in: aGame.
	target do: [ :spaceship | aGame move: spaceship to: otherSide ].




]

{ #category : 'initialization' }
WormholeEffect >> initializeIsIn: aPosition goesTo: anotherPosition [

targeting := LandingShipTarget new.
otherSide := anotherPosition.
myPosition:= aPosition .
]

{ #category : 'accessing' }
WormholeEffect >> position [

^myPosition 
]

{ #category : 'as yet unclassified' }
WormholeEffect >> reverseTargeting [
	targeting:= targeting reverse.
]

{ #category : 'initialization' }
WormholeEffect >> setPosition: aPosition [
myPosition := aPosition.
]
