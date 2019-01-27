"
Class representing a tiled map
"
Class {
	#name : #WinterTiledMap,
	#superclass : #Object,
	#instVars : [
		'properties',
		'layers',
		'tileSets',
		'resources'
	],
	#category : 'Winter-Tiled'
}

{ #category : #properties }
WinterTiledMap >> addLayer: aLayer [

	layers add: aLayer
]

{ #category : #properties }
WinterTiledMap >> addTileSet: aTileSet [

	tileSets  add: aTileSet
]

{ #category : #initialization }
WinterTiledMap >> initialize [
	super initialize.
	layers := OrderedCollection new.
	properties := Dictionary new.
	tileSets  := OrderedCollection new.
	resources := OrderedCollection new
]

{ #category : #accessing }
WinterTiledMap >> layers [

	^ layers  
]

{ #category : #accessing }
WinterTiledMap >> properties [

	^ properties values 
]

{ #category : #properties }
WinterTiledMap >> propertiesAt: aKey [

	^properties at: aKey
]

{ #category : #properties }
WinterTiledMap >> propertiesAt: aKey put: aValue [

	properties at: aKey put: aValue
]

{ #category : #accessing }
WinterTiledMap >> resources [

	^resources
]

{ #category : #accessing }
WinterTiledMap >> resources: aResourcesCollection [ 

	resources := aResourcesCollection.
]

{ #category : #accessing }
WinterTiledMap >> tileSets [

	^ tileSets 
]

{ #category : #properties }
WinterTiledMap >> tilesAt: anId [

	^tileSets  detect: [:each | each hasTileWithId: anId]  ifFound: [ :tileSet | tileSet tilesAt: anId  ]  ifNone: [ nil ]
]
