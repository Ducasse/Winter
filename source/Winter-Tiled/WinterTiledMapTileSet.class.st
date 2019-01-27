"
Class representing a tileSet in a tiled map
"
Class {
	#name : #WinterTiledMapTileSet,
	#superclass : #Object,
	#instVars : [
		'name',
		'tiles',
		'properties'
	],
	#category : 'Winter-Tiled'
}

{ #category : #'instance creation' }
WinterTiledMapTileSet class >> named: aName [

	^ self new initializeNamed: aName
]

{ #category : #testing }
WinterTiledMapTileSet >> hasTileWithId: anId [

	^ tiles includesKey: anId
]

{ #category : #initialization }
WinterTiledMapTileSet >> initialize [

	super initialize.
	name := String new.
	tiles := Dictionary new.
	properties := Dictionary new
]

{ #category : #initialization }
WinterTiledMapTileSet >> initializeNamed: aName [

	name := aName
]

{ #category : #accessing }
WinterTiledMapTileSet >> name [

	^ name
]

{ #category : #accessing }
WinterTiledMapTileSet >> name: aName [

	name := aName
]

{ #category : #accessing }
WinterTiledMapTileSet >> properties [

	^ properties 
]

{ #category : #'tiles access' }
WinterTiledMapTileSet >> propertiesAt: aKey [

	^properties  at: aKey 
]

{ #category : #'tiles access' }
WinterTiledMapTileSet >> propertiesAt: aKey put: aProperty [

	properties  at: aKey put: aProperty 
]

{ #category : #'tiles access' }
WinterTiledMapTileSet >> tilesAt: anId [

	^tiles at: anId 
]

{ #category : #'tiles access' }
WinterTiledMapTileSet >> tilesAt: anId put: aTile [

	tiles at: anId put: aTile 
]

{ #category : #accessing }
WinterTiledMapTileSet >> tilesCount [

	^tiles size
]
