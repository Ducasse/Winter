"
Collision checker for a component  and borders
"
Class {
	#name : #CollisionAgainstMapBordersChecker,
	#superclass : #WinterReactiveObject,
	#instVars : [
		'component',
		'gameWindow'
	],
	#category : 'Winter-Core-Collision'
}

{ #category : #'Instance Creation' }
CollisionAgainstMapBordersChecker class >> for: aComponent [
	^ self new initializeFor: aComponent
]

{ #category : #Validating }
CollisionAgainstMapBordersChecker >> assertIsAnAxisSymbol: aSymbol [
	| symbol |
	symbol := aSymbol asLowercase.
	(#(#x #y) includes: symbol)
		ifFalse: [ Error signal: 'Symbol passed to border checker should be x, X, y or Y' ]
]

{ #category : #private }
CollisionAgainstMapBordersChecker >> componentCollideOnPositionOrExtentOfAxis: axisSymbol [
	^ (component position perform: axisSymbol asLowercase asSymbol)
		>
			(game screen
				perform: (#extent , axisSymbol asUppercase) asSymbol)
		or: [ (component position perform: axisSymbol asLowercase asSymbol)
				< (game screen perform: (#position , axisSymbol asUppercase) asSymbol) ]
]

{ #category : #Initialization }
CollisionAgainstMapBordersChecker >> initializeFor: aComponent [
	component := aComponent.
	game := component game
]

{ #category : #Evaluating }
CollisionAgainstMapBordersChecker >> value: axisSymbol [
	"Axis symbol should be #x , #X , #y or #Y"

	self assertIsAnAxisSymbol: axisSymbol.
	(self componentCollideOnPositionOrExtentOfAxis: axisSymbol)
		ifTrue: [ (CollisionAgainstMapBorders of: component on: axisSymbol)
				applyOnGame ]
]
