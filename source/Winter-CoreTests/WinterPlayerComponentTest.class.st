Class {
	#name : #WinterPlayerComponentTest,
	#superclass : #TestCase,
	#category : 'Winter-CoreTests'
}

{ #category : #'test support' }
WinterPlayerComponentTest >> collisionShapeOn: aGame [

	^Winter2DCircle
		ofCenter: 250 @ 530
		radius: 15
		color: Color red
		in: aGame.
]

{ #category : #'test support' }
WinterPlayerComponentTest >> game [

	^self
]

{ #category : #'test support' }
WinterPlayerComponentTest >> position [

	^200@200
]

{ #category : #'test support' }
WinterPlayerComponentTest >> scene [

	^self 
]

{ #category : #tests }
WinterPlayerComponentTest >> testAccessing [

	| component game scene collisionShape position|

	component := WinterTestPlayer new.
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
