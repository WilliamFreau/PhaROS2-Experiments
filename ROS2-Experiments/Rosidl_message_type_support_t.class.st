Class {
	#name : #'Rosidl_message_type_support_t',
	#superclass : #FFIExternalStructure,
	#category : #'ROS2-Experiments-Impl-Rosidl'
}

{ #category : #ros2 }
Rosidl_message_type_support_t class >> fieldsDesc [ 
	^#(
		const char * typesupport_identifier;
		const void * data;
		Rosidl_message_typesupport_handle_function func;
	)
]
