Class {
	#name : #ROS2Types,
	#superclass : #SharedPool,
	#classVars : [
		'RCLC_CALLBACK_T'
	],
	#category : #'ROS2-Experiments-Impl'
}

{ #category : #'class initialization' }
ROS2Types class >> initialize [ 
	RCLC_CALLBACK_T := 'void *'
]
