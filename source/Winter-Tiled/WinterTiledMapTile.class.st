"
Class representing a tile of a tileSet in a tiled map
"
Class {
	#name : #WinterTiledMapTile,
	#superclass : #Object,
	#instVars : [
		'mapObjects',
		'mapProperties',
		'offSetX',
		'offSetY',
		'textureRegion'
	],
	#category : 'Winter-Tiled'
}

{ #category : #'Instance Creation' }
WinterTiledMapTile class >> of: aTextureRegion havingOffsetX: aNumber andOffsetY: anotherNumber [

	^ self new initializeOf: aTextureRegion havingOffsetX: aNumber andOffsetY: anotherNumber
]

{ #category : #initialization }
WinterTiledMapTile >> initialize [
	super initialize.
	mapObjects := OrderedCollection new.
	mapProperties := OrderedCollection new
]

{ #category : #initialization }
WinterTiledMapTile >> initializeOf: aTextureRegion havingOffsetX: aNumber andOffsetY: anotherNumber [

	textureRegion := aTextureRegion.
	offSetX := aNumber.
	offSetY := anotherNumber
]

{ #category : #accessing }
WinterTiledMapTile >> mapObjects [
	
	^ mapObjects
]

{ #category : #accessing }
WinterTiledMapTile >> mapObjects: aMapObjectsCollection [
	
	mapObjects := aMapObjectsCollection
]

{ #category : #accessing }
WinterTiledMapTile >> mapProperties [
	
	^ mapProperties 
]

{ #category : #accessing }
WinterTiledMapTile >> mapProperties: aMapPropertiesCollection [
	
	mapProperties := aMapPropertiesCollection
]

{ #category : #accessing }
WinterTiledMapTile >> offSetX [
	
	^ offSetX
]

{ #category : #accessing }
WinterTiledMapTile >> offSetX: aNumber [
	
	offSetX := aNumber
]

{ #category : #accessing }
WinterTiledMapTile >> offSetY [
	
	^ offSetY
]

{ #category : #accessing }
WinterTiledMapTile >> offSetY: aNumber [
	
	offSetY := aNumber
]

{ #category : #accessing }
WinterTiledMapTile >> textureRegion [
	
	^ textureRegion
]

{ #category : #accessing }
WinterTiledMapTile >> textureRegion: aTextureRegion [
	
	textureRegion := aTextureRegion
]
