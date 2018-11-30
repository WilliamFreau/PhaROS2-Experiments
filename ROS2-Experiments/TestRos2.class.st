Class {
	#name : #TestRos2,
	#superclass : #Object,
	#instVars : [
		'argc',
		'argv'
	],
	#classVars : [
		'Argc',
		'Argv'
	],
	#category : #'ROS2-Experiments-Test'
}

{ #category : #initialization }
TestRos2 >> initialize [ 
	super initialize.
	argc := 1.
	argv := #('test').
]

{ #category : #ros2 }
TestRos2 >> rcl_init: aArgc argv: aArgv [
	^self ffiCall: #(int rclc_init #(int aArgc, FFIExternalArray * aArgv)) module: LibRCLC.
]

{ #category : #ros2 }
TestRos2 >> rclc_create_node: aString [
	^self ffiCall: #( Rclc_node_t rclc_create_node (String aString) ) module: LibRCLC.
]

{ #category : #ros2 }
TestRos2 >> rclc_create_node: aString namespace: aStringNamespace [
	^self ffiCall: #( Rclc_node_t rclc_create_node (String aString, String aStringNamespace) ) module: LibRCLC.
]

{ #category : #ros2 }
TestRos2 >> rclc_create_publisher: aString forNode: aNode withQueueSize: anInteger [
	^self ffiCall: #(Rclc_publisher_t * rclc_create_publisher(Rclc_node_t_o * aNode, char * aString, int anInteger)) module: LibRCLC.
]

{ #category : #ros2 }
TestRos2 >> rclc_init [
| externalArray |
        [ externalArray := FFIExternalArray externalNewType: 'char*' size: argv size.
        argv withIndexDo: [ :string :index | externalArray at: index put: (ExternalAddress fromString: string) ].
        self rcl_init: (argv size) argv: externalArray ]
                ensure: [ externalArray
                                ifNotNil: [ externalArray do: [ :item | item ifNotNil: [ :e | e free ] ].
                                        externalArray free ] ]
]

{ #category : #ros2 }
TestRos2 >> rclc_ok [
	^self ffiCall: #(bool rclc_ok()) module: LibRCLC.
]

{ #category : #ros2 }
TestRos2 >> standardNamespace [
	^'test'.
]
