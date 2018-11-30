Class {
	#name : #'Rclc_node_t',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_RCL_NODE',
		'OFFSET_SUBS'
	],
	#pools : [
		'ROS2Types'
	],
	#category : #'ROS2-Experiments-Impl-Rclc'
}

{ #category : #ros2 }
Rclc_node_t class >> fieldsDesc [
	"self rebuildFieldAccesor"
	^#(
		Rcl_node_t rcl_node;
		Rclc_subscription_t ** subs;
		FFISizeT subs_s;
		)
]

{ #category : #'accessing structure variables' }
Rclc_node_t >> rcl_node [
	"This method was automatically generated"
	^ Rcl_node_t fromHandle: (handle referenceStructAt: OFFSET_RCL_NODE length: Rcl_node_t byteSize)
]

{ #category : #'accessing structure variables' }
Rclc_node_t >> rcl_node: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_RCL_NODE put: anObject getHandle length: Rcl_node_t byteSize
]
