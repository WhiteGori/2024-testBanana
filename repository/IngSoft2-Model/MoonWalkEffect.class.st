"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  If you land here, everyone else goes back N squares

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them.

Public API and Key Messages

- message one
- message two
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.

Internal Representation and Key Implementation Points.

    Instance Variables
	myPosition:		<Object>
	n:		<Object>


    Implementation Points
"
Class {
	#name : 'MoonWalkEffect',
	#superclass : 'Object',
	#instVars : [
		'someSquares',
		'myPosition',
		'targeting'
	],
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'instance creation' }
MoonWalkEffect class >> isIn: aPosition [

	^ self new initializeIsIn: aPosition  moves: aPosition atRandom
]

{ #category : 'testing' }
MoonWalkEffect class >> isIn: aPosition moves: aNumberOfSquares [

	^ self new initializeIsIn: aPosition moves: aNumberOfSquares
]

{ #category : 'action' }
MoonWalkEffect >> applyIn: aGame for: aSpaceship [ 
	
	|target|
	
	target := targeting targets: aSpaceship in: aGame.
	target do: [ :spaceship | aGame make: spaceship  move: someSquares negated ].
	"aGame applyMoonwalkFor: aSpaceship movingOthersBack: someSquares  ."
	
	

]

{ #category : 'initialization' }
MoonWalkEffect >> initializeIsIn: aSquare moves: aNumberOfSquares [ 
	targeting := AllButLandingShipTarget new.
	someSquares  := aNumberOfSquares .
	myPosition := aSquare 
]

{ #category : 'accessing' }
MoonWalkEffect >> position [

^myPosition 

]

{ #category : 'action' }
MoonWalkEffect >> reverseTargeting [
	targeting:= targeting reverse.
]
