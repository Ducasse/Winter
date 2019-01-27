"
Representation of a Tile Map Object
"
Class {
	#name : #WinterTiledMapTileMapObject,
	#superclass : #WinterMapObject,
	#instVars : [
		'tile',
		'flipHorizontally',
		'flipVertically',
		'textureRegion',
		'originX',
		'originY',
		'scaleX',
		'scaleY',
		'rotation'
	],
	#category : 'Winter-Tiled'
}

{ #category : #'Instance Creation' }
WinterTiledMapTileMapObject class >> from: aTile horizontally: flagFlipHorizontally vertically: flagFlipVertically [

	^ self new initializeFrom: aTile horizontally: flagFlipHorizontally vertically: flagFlipVertically
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> flipHorizontally [

	^ flipHorizontally 
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> flipHorizontally: aBoolean [

	flipHorizontally := aBoolean
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> flipVertically [

	^ flipVertically
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> flipVertically: aBoolean [

	flipVertically  := aBoolean
]

{ #category : #initialization }
WinterTiledMapTileMapObject >> initialize [

	super initialize.
	x := 0.0.
	y := 0.0.
	originX := 0.0.
	originY := 0.0.
	scaleX := 1.0.
	scaleY := 1.0.
	rotation := 0.0
]

{ #category : #initialization }
WinterTiledMapTileMapObject >> initializeFrom: aTile horizontally: flagFlipHorizontally vertically: flagFlipVertically [

	tile := aTile.
	flipHorizontally := flagFlipHorizontally.
	flipVertically := flagFlipVertically.
	textureRegion := WinterTextureRegion fromAnotherTextureRegion: tile textureRegion.
	textureRegion
		flipX: flipHorizontally;
		flipY: flipVertically
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> originX [

	^ originX
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> originX: aNumber [

	originX := aNumber
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> originY [

	^ originY
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> originY: aNumber [

	originY := aNumber
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> rotation [

	^ rotation
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> rotation: aNumber [

	rotation := aNumber
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> scaleX [

	^ scaleX
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> scaleX: aNumber [

	scaleX := aNumber
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> scaleY [

	^ scaleY
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> scaleY: aNumber [

	scaleY := aNumber
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> textureRegion [

	^ textureRegion 
]

{ #category : #accessing }
WinterTiledMapTileMapObject >> tile [

	^ tile
]
