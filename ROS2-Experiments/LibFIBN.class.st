Class {
	#name : #LibFIBN,
	#superclass : #FFILibrary,
	#category : #'ROS2-Experiments-Lib'
}

{ #category : #'accessing platform' }
LibFIBN >> calcFib: anInteger [
	^self ffiCall: #(int fibN( int anInteger ) )
]

{ #category : #'accessing platform' }
LibFIBN >> getN [
	^self ffiCall: #(int getN () )
]

{ #category : #'accessing platform' }
LibFIBN >> setN: anInteger [
 ^self ffiCall: #( void setN(int anInteger))
]

{ #category : #'accessing platform' }
LibFIBN >> unixModuleName [
		| pluginDir |
	pluginDir := Smalltalk vm binary parent.
	#('fibn.dylib')
		detect: [ :each | (pluginDir / each) exists ] 
		ifFound: [ :libName | ^ libName ].

	self error: 'Module not found.'
]
