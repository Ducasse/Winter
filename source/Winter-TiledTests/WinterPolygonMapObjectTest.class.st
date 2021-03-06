Class {
	#name : #WinterPolygonMapObjectTest,
	#superclass : #TestCase,
	#instVars : [
		'polygon'
	],
	#category : 'Winter-TiledTests'
}

{ #category : #'Test Support' }
WinterPolygonMapObjectTest >> polygon [

	^ polygon
]

{ #category : #initialization }
WinterPolygonMapObjectTest >> setUp [

	polygon := Polygon vertices: self vertices
]

{ #category : #tests }
WinterPolygonMapObjectTest >> testAccessing [

	| mapObject |

	mapObject := WinterPolygonMapObject of: self polygon atX: 2 andY: 3.

	self
		assert: mapObject x equals: 2;
		assert: mapObject y equals: 3;
		assert: mapObject name equals: '';
		assert: mapObject opacity equals: 1.0;
		assert: mapObject visible;
		assert: mapObject polygon equals: self polygon;
		assert: mapObject color equals: Color white.

	mapObject
		x: 5;
		y: 4;
		name: 'polygon';
		opacity: 2.0;
		visible: false;
		color: Color black.

	self
		assert: mapObject x equals: 5;
		assert: mapObject y equals: 4;
		assert: mapObject name equals: 'polygon';
		assert: mapObject opacity equals: 2.0;
		deny: mapObject visible;
		assert: mapObject color equals: Color black
]

{ #category : #'Test Support' }
WinterPolygonMapObjectTest >> vertices [

	^ {(0 @ 0).
	(0 @ 1).
	(1 @ 1).
	(1 @ 0)}
]
