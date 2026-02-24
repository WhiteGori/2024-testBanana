Class {
	#name : 'PositionTrackerTest',
	#superclass : 'TestCase',
	#category : 'IngSoft2-Tests',
	#package : 'IngSoft2-Tests'
}

{ #category : 'accessing' }
PositionTrackerTest >> createBoardOf: length distance: aDistance withEffects: someEffects wormholeBeginsAt: startPoint andEndsAt: endPoint [

	| squares |
	squares := OrderedCollection new.
	1 to: length  do: [ :i |
	squares add: (Square with: (NullEffect isIn: i)) ].

	someEffects do: [ :effect |
		squares at: effect position put: (Square with: effect) ].
	^ Board
		  with: squares
		  length: aDistance
		  wormholeBeginsAt: startPoint
		  andEndsAt: endPoint
]

{ #category : 'tests' }
PositionTrackerTest >> test137NewPositionTrackerStartsAtSquareOne [

	| position aBoard|
	aBoard := self createBoardOf: 10 distance: (ParsecDistance of: 3) withEffects: {  } wormholeBeginsAt: 1 andEndsAt: 2.
	position := PositionTracker beginIn: aBoard .
	self assert: position square equals: 1
]

{ #category : 'tests' }
PositionTrackerTest >> test138PositionTrackerSquareEqualsFourWhenMovedThreeSpaces [

	| position aBoard |
	aBoard := self createBoardOf: 10 distance: (ParsecDistance of: 3) withEffects: {  } wormholeBeginsAt: 1 andEndsAt: 2.
	position := PositionTracker beginIn: aBoard .
	position move: 3.
	self assert: position square equals: 4
]

{ #category : 'tests' }
PositionTrackerTest >> test139NewPositionTrackerStartsAtZeroLaps [

	| position aBoard |
	aBoard := self createBoardOf: 10 distance: (ParsecDistance of: 3) withEffects: {  } wormholeBeginsAt: 1 andEndsAt: 2.
	position := PositionTracker beginIn: aBoard .
	self assert: position laps equals: 0
]

{ #category : 'tests' }
PositionTrackerTest >> test140PositionTrackerKeepsTrackOfLaps [

	| position aBoard |
	aBoard := self createBoardOf: 10 distance: (ParsecDistance of: 3) withEffects: {  } wormholeBeginsAt: 1 andEndsAt: 2.
	position := PositionTracker beginIn: aBoard .
	position move: 31.
	self assert: position laps equals: 3
]

{ #category : 'tests' }
PositionTrackerTest >> test141PositionTrackerChecksWhenYouFinishALapReturnsToFirstPosition [

	| position aBoard |
	aBoard := self createBoardOf: 10 distance: (ParsecDistance of: 3) withEffects: {  } wormholeBeginsAt: 1 andEndsAt: 2.
	position := PositionTracker beginIn: aBoard .
	position move: 30.
	self assert: position square equals: 1
]

{ #category : 'tests' }
PositionTrackerTest >> test142PositionTrackerKeepsTrackOfLapsAfterMoving [


	| position aBoard |
	aBoard := self createBoardOf: 10 distance: (ParsecDistance of: 3) withEffects: {  } wormholeBeginsAt: 1 andEndsAt: 2.
	position := PositionTracker beginIn: aBoard .
	position move: 31.
	position moveTo: 4.
	self assert: position laps equals: 3
]

{ #category : 'tests' }
PositionTrackerTest >> test143PositionTrackerCanMoveToASpecificSquare [

	| position aBoard |
	aBoard := self createBoardOf: 10 distance: (ParsecDistance of: 3) withEffects: {  } wormholeBeginsAt: 1 andEndsAt: 2.
	position := PositionTracker beginIn: aBoard .
	position move: 31.
	position moveTo: 4.
	self assert: position square equals: 4
]
