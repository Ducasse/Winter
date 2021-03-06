"
Circle abstraction as a WInter Component
"
Class {
	#name : #Winter2DCircle,
	#superclass : #Winter2DShape,
	#instVars : [
		'radius'
	],
	#category : 'Winter-Core2D-Base'
}

{ #category : #'Instance Creation' }
Winter2DCircle class >> ofCenter: aPoint radius: aFloat color: aColor in: aGame [

	^ self new
		initializeOfCenter: aPoint
		radius: aFloat
		color: aColor
		in: aGame
]

{ #category : #Accessing }
Winter2DCircle >> bounds [

	^position extent: radius @ radius
]

{ #category : #private }
Winter2DCircle >> createPaintOn: aCanvas [

	^ graphicsPaint := self color
]

{ #category : #private }
Winter2DCircle >> createPathOn: aCanvas [

	^graphicsPath := aCanvas
		createPath: [ :builder | 
			| r rNeg halfPi |
			r := self radius.
			rNeg := r negated.
			halfPi := Float halfPi.
			builder
				relative;
				moveTo: 0 @ r;
				cwArcTo: r @ rNeg angle: halfPi;
				cwArcTo: r @ r angle: halfPi;
				cwArcTo: rNeg @ r angle: halfPi;
				cwArcTo: rNeg @ rNeg angle: halfPi ]
]

{ #category : #Initialization }
Winter2DCircle >> initializeOfCenter: aPoint radius: aFloat color: aColor in: aGame [

	position := aPoint .
	radius := aFloat .
	color := aColor .
	game := aGame 
		
]

{ #category : #Accessing }
Winter2DCircle >> radius [

	^radius ifNil: [ radius := self class defaultRadius ] 
]

{ #category : #Accessing }
Winter2DCircle >> radius: aNumber [

	radius := aNumber.
	graphicsPath := nil
]

{ #category : #private }
Winter2DCircle >> renderShape: aShape on: aCanvas [

	aCanvas drawShape: aShape
]

{ #category : #private }
Winter2DCircle >> setSpecificPaint: aPaint on: aCanvas [

	aCanvas setPaint: aPaint
]
