Class {
	#name : #IntraDecode,
	#superclass : #Object,
	#category : #'ROS2-Experiments-Test'
}

{ #category : #Decode }
IntraDecode class >> decode: anInt [
	|list compute ret|
	list := OrderedCollection new.
	compute := anInt.
  [ compute >= 256 ] whileTrue: [ 
	list add: (compute % 256).
	compute := compute // 256.
	 ].
	list add: compute.
	ret := ''.
	Transcript cr.
	list do: [ :i | Transcript show: i asCharacter ].
	^ret
]
