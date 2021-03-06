"
Active element in a game, controlled by the user
"
Class {
	#name : #WinterPlayer,
	#superclass : #WinterComponent,
	#instVars : [
		'interactionEvents',
		'sprite',
		'collisionShape',
		'keyDownInteractions',
		'keyUpInteractions'
	],
	#category : 'Winter-Core-Base'
}

{ #category : #Interactions }
WinterPlayer >> addInteractionOnKeyDownOf: aKeywordCharacter doing: anActionBlock [

	keyDownInteractions at: aKeywordCharacter put: anActionBlock  
]

{ #category : #Interactions }
WinterPlayer >> addInteractionOnKeyUpOf: aKeywordCharacter doing: anActionBlock [

	keyUpInteractions at: aKeywordCharacter put: anActionBlock  
]

{ #category : #Collisions }
WinterPlayer >> checkCollisions [
"should be re implemented"

]

{ #category : #Accessing }
WinterPlayer >> collisionShape [
	^ collisionShape
]

{ #category : #Accessing }
WinterPlayer >> collisionShape: aCollisionShape [

	collisionShape := aCollisionShape 
]

{ #category : #Events }
WinterPlayer >> eventUpdated: anEvent [

	collisionShape eventUpdated: anEvent .
	self checkCollisions.

]

{ #category : #Events }
WinterPlayer >> handleKeyDown: anEvent [


	keyDownInteractions
		at: anEvent character
		ifPresent: [ :interaction | interaction value ]
		ifAbsent: [ "Do nothing" ]
]

{ #category : #Events }
WinterPlayer >> handleKeyUp: anEvent [

	keyUpInteractions
		at: anEvent character
		ifPresent: [ :interaction | interaction value ]
		ifAbsent: [ "Do nothing" ]
]

{ #category : #initialization }
WinterPlayer >> initialize [

	super initialize.
	keyDownInteractions := Dictionary new.
	keyUpInteractions := Dictionary new.
	self
		initializeResources;
		initializeSprite;
		initializeCollisionShape
		
]

{ #category : #initialization }
WinterPlayer >> initializeCollisionShape [

	"Should be re implementd"

	
]

{ #category : #initialization }
WinterPlayer >> initializeResources [

	"Should be re implementd"

	
]

{ #category : #initialization }
WinterPlayer >> initializeSprite [

	"Should be re implementd"

	
]

{ #category : #Accessing }
WinterPlayer >> position [
	^ collisionShape position
]

{ #category : #Accessing }
WinterPlayer >> position: aPosition [
	collisionShape position: aPosition
]

{ #category : #Rendering }
WinterPlayer >> renderOn: aCanvas [

	sprite
		ifNil: [  collisionShape renderOn: aCanvas ]
		ifNotNil: [ self renderSpriteOn: aCanvas ]
]

{ #category : #Rendering }
WinterPlayer >> renderSpriteOn: aCanvas [

	aCanvas pathTransform
		restoreAfter: [ aCanvas pathTransform translateBy: self position.
			aCanvas setPaint: (sprite asAthensPaintOn: aCanvas).
			sprite drawOnAthensCanvas: aCanvas ]
]

{ #category : #Events }
WinterPlayer >> updateUsing: aCanvas [

	collisionShape updateUsing: aCanvas .
	self checkCollisions.

]
