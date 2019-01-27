Class {
	#name : #WinterNonPlayerComponentTest,
	#superclass : #TestCase,
	#category : 'Winter-CoreTests'
}

{ #category : #'test support' }
WinterNonPlayerComponentTest >> collisionShapeOn: aGame [

	^ Winter2DCircle
		ofCenter: 250 @ 530
		radius: 15
		color: Color red
		in: aGame
]

{ #category : #'test support' }
WinterNonPlayerComponentTest >> game [

	^ self
]

{ #category : #'test support' }
WinterNonPlayerComponentTest >> position [

	^ 200@200
]

{ #category : #'test support' }
WinterNonPlayerComponentTest >> scene [

	^ self 
]

{ #category : #tests }
WinterNonPlayerComponentTest >> testAccessing [

	| component game scene collisionShape position|

	component := WinterTestNonPlayer new.
	game := self game.
	scene := self scene.
	collisionShape := self collisionShapeOn: game.
	position := self position.
	component game: game.
	component scene: scene.
	component collisionShape: collisionShape.
	component position: position.
	self
		assert: component game equals: game;
		assert: component scene equals: scene
]
