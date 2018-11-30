Class {
	#name : #LibRCL,
	#superclass : #FFILibrary,
	#category : #'ROS2-Experiments-Lib'
}

{ #category : #'process actions' }
LibRCL class >> runCommand: aCommand [

	^self uniqueInstance system: aCommand  
]

{ #category : #'accessing platform' }
LibRCL >> macModuleName [ 
	"Not known yet"
	^ 'none'
]

{ #category : #RCL }
LibRCL >> rclInit [
	^self ffiCall: #( void rcl_init () ) module: LibRCL.
]

{ #category : #RCL }
LibRCL >> rclInit: nodeName [
	|aString|
	aString := 'test'.
	^self ffiCall: #( int rcl_init ( 1 , aString ) ) module: LibRCL.
]

{ #category : #RCL }
LibRCL >> rclOk [
	^ self ffiCall: #( bool rcl_ok ( ) ) module: LibRCL.
]

{ #category : #'accessing platform' }
LibRCL >> unixModuleName [
	"Kept for backward compatibility. 
	 Users should use unix32* or unix64*"
	| lib |
	
	lib := '/opt/ros/bouncy/lib/librcl.so'.
	
	lib asFileReference exists ifTrue: [ ^lib ].
	
	self error: 'Pas de module librcl.so.'
	
]

{ #category : #'accessing platform' }
LibRCL >> win32ModuleName [ 
	"Not known yet"
	^ 'none'
]
