"
Class representing a group Layer in a Map,containning more layers 
"
Class {
	#name : #WinterTiledMapTileGroupLayer,
	#superclass : #WinterTiledMapLayer,
	#instVars : [
		'layers'
	],
	#category : 'Winter-Tiled'
}

{ #category : #layers }
WinterTiledMapTileGroupLayer >> addLayer: aLayer [

	layers add: aLayer
]

{ #category : #drawing }
WinterTiledMapTileGroupLayer >> drawOn: aCanvas [

	layers do: [ :layer | layer drawOn: aCanvas ]
]

{ #category : #initialization }
WinterTiledMapTileGroupLayer >> initialize [

	super initialize.
	layers := OrderedCollection new
]

{ #category : #accessing }
WinterTiledMapTileGroupLayer >> layers [

	^ layers
]

{ #category : #layers }
WinterTiledMapTileGroupLayer >> removeLayer: aLayer [

	layers remove: aLayer
]
