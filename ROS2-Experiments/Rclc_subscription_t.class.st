Class {
	#name : #'Rclc_subscription_t',
	#superclass : #ExternalObject,
	#pools : [
		'ROS2Types'
	],
	#category : #'ROS2-Experiments-Impl-Rclc'
}

{ #category : #ros2 }
Rclc_subscription_t class >> fieldsDesc [ 
	^#(
		Rcl_subscription_t rcl_subscription;
		RCLC_CALLBACK_T user_callback;
		Rclc_message_type_support_t type_support;
		Rclc_node_t * node;
		)
]
