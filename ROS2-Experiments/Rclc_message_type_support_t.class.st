Class {
	#name : #'Rclc_message_type_support_t',
	#superclass : #FFIExternalStructure,
	#category : #'ROS2-Experiments-Impl-Rclc'
}

{ #category : #ros2 }
Rclc_message_type_support_t class >> fieldsDesc [ 
	^#(
		Rosidl_message_type_support_t * rosidl_message_type_support;
		FFISize_t size_of;
	)
]
