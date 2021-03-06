Class {
	#name : #SpiderInvasionPlayer,
	#superclass : #WinterPlayer,
	#instVars : [
		'loaded'
	],
	#category : 'Winter-Examples-SpiderInvasion'
}

{ #category : #'Instance Creation' }
SpiderInvasionPlayer class >> on: aGame [

	^ self new initializeOn: aGame
]

{ #category : #Collisions }
SpiderInvasionPlayer >> checkCollisions [

	(CollisionAgainstMapBordersChecker for: self)
		value: #x
]

{ #category : #actions }
SpiderInvasionPlayer >> fire [

	| missilePos |

	loaded
		ifTrue: [ loaded := false.
			missilePos := self position - (0 @ 24).
			scene addComponent: (SpiderInvasionMissile atPosition: missilePos of: scene tick: 5) ]
]

{ #category : #initialization }
SpiderInvasionPlayer >> initializeCollisionShape [

	collisionShape := Winter2DSquare
		ofCenter: (384 "game dimensions x" / 2) @ 672 "game dimensions y" - (48@48)
		extent: 48@48 "game spriteSize"
		color: Color red
		in: game
]

{ #category : #initialization }
SpiderInvasionPlayer >> initializeOn: aGame [

	game := aGame.
	collisionShape game: game.
	sprite := self spaceShipSprite .
	loaded := true
]

{ #category : #Moving }
SpiderInvasionPlayer >> moveLeft [

	| newX |

	newX := (self positionX - 24)  max: 0.
	collisionShape position: newX @ self positionY
]

{ #category : #Moving }
SpiderInvasionPlayer >> moveRight [

	| newX |
	self flag: 'Revisar el min'.
	newX := (self positionX + 24 )  min: 336.
	collisionShape position: newX @ self positionY
]

{ #category : #Accessing }
SpiderInvasionPlayer >> positionX [

	^ self position x
]

{ #category : #Accessing }
SpiderInvasionPlayer >> positionY [

	^ self position y
]

{ #category : #actions }
SpiderInvasionPlayer >> reload [

	loaded := true.
]

{ #category : #Accessing }
SpiderInvasionPlayer >> spaceShipSprite [

	^ WinterAssetManagementSystem current spriteNamed: #spaceShip
]
