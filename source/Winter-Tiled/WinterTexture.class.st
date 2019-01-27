"
Class representing a teture of an image
"
Class {
	#name : #WinterTexture,
	#superclass : #Object,
	#instVars : [
		'image'
	],
	#category : 'Winter-Tiled'
}

{ #category : #'Instance Creation' }
WinterTexture class >> from: aFileReference [
	^ self new initializeFrom: aFileReference
]

{ #category : #accessing }
WinterTexture >> height [

	^ image height
]

{ #category : #initialization }
WinterTexture >> initializeFrom: aFileReference [

	image := aFileReference 
		binaryReadStreamDo: [ :stream | ImageReadWriter formFromStream: stream ]
]

{ #category : #accessing }
WinterTexture >> width [

	^ image width
]
