"
Abstract representation of a Map Object
"
Class {
	#name : #WinterMapObject,
	#superclass : #Object,
	#instVars : [
		'x',
		'y',
		'name',
		'opacity',
		'visible',
		'color'
	],
	#category : 'Winter-Tiled'
}

{ #category : #accessing }
WinterMapObject >> color [

	^ color
]

{ #category : #accessing }
WinterMapObject >> color: aColor [

	color := aColor
]

{ #category : #drawing }
WinterMapObject >> drawOn: aCanvas [

	self flag: 'Should draw?'
]

{ #category : #initialization }
WinterMapObject >> initialize [

	name := ''.
	opacity := 1.0.
	visible := true.
	color := Color white
]

{ #category : #accessing }
WinterMapObject >> name [

	^ name
]

{ #category : #accessing }
WinterMapObject >> name: aName [

	 name := aName
]

{ #category : #accessing }
WinterMapObject >> opacity [

	^ opacity
]

{ #category : #accessing }
WinterMapObject >> opacity: aFloat [

	opacity := aFloat 
]

{ #category : #accessing }
WinterMapObject >> visible [

	^ visible
]

{ #category : #accessing }
WinterMapObject >> visible: aBoolean [

	visible := aBoolean 
]

{ #category : #accessing }
WinterMapObject >> x [

	^ x
]

{ #category : #accessing }
WinterMapObject >> x: anX [

	x := anX
]

{ #category : #accessing }
WinterMapObject >> y [

	^ y
]

{ #category : #accessing }
WinterMapObject >> y: anY [

	y := anY
]
