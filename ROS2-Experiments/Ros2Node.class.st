Class {
	#name : #Ros2Node,
	#superclass : #Object,
	#category : #'ROS2-Experiments-Object'
}

{ #category : #converting }
Ros2Node class >> asExternalTypeOn: generator [
	^FFIExternalObjectType objectClass: self
]

{ #category : #converting }
Ros2Node class >> ffiLibraryName [ 
	^LibRCLC 
]

{ #category : #'library path' }
Ros2Node >> ffiLibraryName [ 
	^ self class ffiLibraryName 
]
