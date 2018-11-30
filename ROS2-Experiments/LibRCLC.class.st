Class {
	#name : #LibRCLC,
	#superclass : #FFILibrary,
	#category : #'ROS2-Experiments-Lib'
}

{ #category : #'accessing platform' }
LibRCLC >> unixModuleName [
	"Kept for backward compatibility. 
	 Users should use unix32* or unix64*"
	^ '/home/william/ros2_ws/install/lib/librclc.so'
]
