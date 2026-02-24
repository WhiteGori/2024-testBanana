"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  Gives a random card to the spaceship that lands on it

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them.

Public API and Key Messages

- message one
- message two
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.

Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : 'MysteryCardEffect',
	#superclass : 'Object',
	#instVars : [
		'myPosition',
		'targeting'
	],
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'testing' }
MysteryCardEffect class >> isIn: aPosition [

 ^self new initializeIsIn: aPosition 
]

{ #category : 'action' }
MysteryCardEffect >> applyIn: aGame for: aSpaceship [

	|target|
	
	target := targeting targets: aSpaceship in: aGame.
	target do: [ :spaceship | aGame addRandomCardFor: spaceship ].

]

{ #category : 'initialization' }
MysteryCardEffect >> initializeIsIn: aPosition [ 

targeting := LandingShipTarget new.
myPosition := aPosition.
]

{ #category : 'accessing' }
MysteryCardEffect >> position [

^myPosition 
]

{ #category : 'action' }
MysteryCardEffect >> reverseTargeting [
	targeting:= targeting reverse.
]

{ #category : 'initialization' }
MysteryCardEffect >> setPosition: aPosition [
myPosition := aPosition.
]
