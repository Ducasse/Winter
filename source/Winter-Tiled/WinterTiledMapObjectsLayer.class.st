"
Class representing an objects layer in a Map
"
Class {
	#name : #WinterTiledMapObjectsLayer,
	#superclass : #WinterTiledMapLayer,
	#instVars : [
		'objects'
	],
	#category : 'Winter-Tiled'
}

{ #category : #'adding/removing' }
WinterTiledMapObjectsLayer >> addObject: aMapObject [

	objects add: aMapObject
]

{ #category : #drawing }
WinterTiledMapObjectsLayer >> drawOn: aCanvas [

	"Objcts should be kind of WinterMapObject"

	objects do: [ :object | object drawOn: aCanvas ]
]

{ #category : #initialization }
WinterTiledMapObjectsLayer >> initialize [

	super initialize .
	objects := OrderedCollection new
]

{ #category : #accessing }
WinterTiledMapObjectsLayer >> objects [

	^ objects
]

{ #category : #'adding/removing' }
WinterTiledMapObjectsLayer >> removeObject: aMapObject [

	objects remove: aMapObject
]
