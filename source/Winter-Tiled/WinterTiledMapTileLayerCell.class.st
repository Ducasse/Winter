"
Class representing a cell in a layer of a map
"
Class {
	#name : #WinterTiledMapTileLayerCell,
	#superclass : #Object,
	#instVars : [
		'tile',
		'flipHorizontally',
		'flipVertically',
		'rotation'
	],
	#classVars : [
		'Rotate0',
		'Rotate270',
		'Rotate90'
	],
	#category : 'Winter-Tiled'
}

{ #category : #initialization }
WinterTiledMapTileLayerCell class >> initialize [

	Rotate0 := 0.
	Rotate90 := 1.
	Rotate270 := 2
]

{ #category : #'Instance Creation' }
WinterTiledMapTileLayerCell class >> of: aTile flippingHorizontally: horizontally flippingVertically: vertically rotating: rotation [
	
	^ self new
		initializeOf: aTile
		flippingHorizontally: horizontally
		flippingVertically: vertically
		rotating: rotation
]

{ #category : #Accessing }
WinterTiledMapTileLayerCell class >> rotate0 [

	^ Rotate0
]

{ #category : #Accessing }
WinterTiledMapTileLayerCell class >> rotate270 [

	^ Rotate270
]

{ #category : #Accessing }
WinterTiledMapTileLayerCell class >> rotate90 [

	^ Rotate90
]

{ #category : #accessing }
WinterTiledMapTileLayerCell >> flipHorizontally [

	^ flipHorizontally 
]

{ #category : #accessing }
WinterTiledMapTileLayerCell >> flipHorizontally: aBoolean [

	flipHorizontally := aBoolean 
]

{ #category : #accessing }
WinterTiledMapTileLayerCell >> flipVertically [

	^ flipVertically  
]

{ #category : #accessing }
WinterTiledMapTileLayerCell >> flipVertically: aBoolean [

	flipVertically := aBoolean
]

{ #category : #initialization }
WinterTiledMapTileLayerCell >> initializeOf: aTile flippingHorizontally: anHorizontallyFlag flippingVertically: aVerticallyFlag rotating: aRotation [

	tile := aTile.
	flipHorizontally := anHorizontallyFlag.
	flipVertically := aVerticallyFlag.
	rotation := aRotation
]

{ #category : #accessing }
WinterTiledMapTileLayerCell >> rotation [

	^ rotation   
]

{ #category : #accessing }
WinterTiledMapTileLayerCell >> rotation: aNumber [

	rotation := aNumber 
]

{ #category : #accessing }
WinterTiledMapTileLayerCell >> tile [

	^ tile
]

{ #category : #accessing }
WinterTiledMapTileLayerCell >> tile: aTile [

	tile := aTile 
]
