; Auto-generated. Do not edit!


(cl:in-package tugas4-srv)


;//! \htmlinclude Phytagoras-request.msg.html

(cl:defclass <Phytagoras-request> (roslisp-msg-protocol:ros-message)
  ((komponenX
    :reader komponenX
    :initarg :komponenX
    :type cl:float
    :initform 0.0)
   (komponenY
    :reader komponenY
    :initarg :komponenY
    :type cl:float
    :initform 0.0)
   (komponenZ
    :reader komponenZ
    :initarg :komponenZ
    :type cl:float
    :initform 0.0))
)

(cl:defclass Phytagoras-request (<Phytagoras-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Phytagoras-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Phytagoras-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tugas4-srv:<Phytagoras-request> is deprecated: use tugas4-srv:Phytagoras-request instead.")))

(cl:ensure-generic-function 'komponenX-val :lambda-list '(m))
(cl:defmethod komponenX-val ((m <Phytagoras-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tugas4-srv:komponenX-val is deprecated.  Use tugas4-srv:komponenX instead.")
  (komponenX m))

(cl:ensure-generic-function 'komponenY-val :lambda-list '(m))
(cl:defmethod komponenY-val ((m <Phytagoras-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tugas4-srv:komponenY-val is deprecated.  Use tugas4-srv:komponenY instead.")
  (komponenY m))

(cl:ensure-generic-function 'komponenZ-val :lambda-list '(m))
(cl:defmethod komponenZ-val ((m <Phytagoras-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tugas4-srv:komponenZ-val is deprecated.  Use tugas4-srv:komponenZ instead.")
  (komponenZ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Phytagoras-request>) ostream)
  "Serializes a message object of type '<Phytagoras-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'komponenX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'komponenY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'komponenZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Phytagoras-request>) istream)
  "Deserializes a message object of type '<Phytagoras-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'komponenX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'komponenY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'komponenZ) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Phytagoras-request>)))
  "Returns string type for a service object of type '<Phytagoras-request>"
  "tugas4/PhytagorasRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Phytagoras-request)))
  "Returns string type for a service object of type 'Phytagoras-request"
  "tugas4/PhytagorasRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Phytagoras-request>)))
  "Returns md5sum for a message object of type '<Phytagoras-request>"
  "55d1a215f43fd1f64eb105a505b172c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Phytagoras-request)))
  "Returns md5sum for a message object of type 'Phytagoras-request"
  "55d1a215f43fd1f64eb105a505b172c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Phytagoras-request>)))
  "Returns full string definition for message of type '<Phytagoras-request>"
  (cl:format cl:nil "float64 komponenX~%float64 komponenY~%float64 komponenZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Phytagoras-request)))
  "Returns full string definition for message of type 'Phytagoras-request"
  (cl:format cl:nil "float64 komponenX~%float64 komponenY~%float64 komponenZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Phytagoras-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Phytagoras-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Phytagoras-request
    (cl:cons ':komponenX (komponenX msg))
    (cl:cons ':komponenY (komponenY msg))
    (cl:cons ':komponenZ (komponenZ msg))
))
;//! \htmlinclude Phytagoras-response.msg.html

(cl:defclass <Phytagoras-response> (roslisp-msg-protocol:ros-message)
  ((magnitude
    :reader magnitude
    :initarg :magnitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass Phytagoras-response (<Phytagoras-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Phytagoras-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Phytagoras-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tugas4-srv:<Phytagoras-response> is deprecated: use tugas4-srv:Phytagoras-response instead.")))

(cl:ensure-generic-function 'magnitude-val :lambda-list '(m))
(cl:defmethod magnitude-val ((m <Phytagoras-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tugas4-srv:magnitude-val is deprecated.  Use tugas4-srv:magnitude instead.")
  (magnitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Phytagoras-response>) ostream)
  "Serializes a message object of type '<Phytagoras-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'magnitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Phytagoras-response>) istream)
  "Deserializes a message object of type '<Phytagoras-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magnitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Phytagoras-response>)))
  "Returns string type for a service object of type '<Phytagoras-response>"
  "tugas4/PhytagorasResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Phytagoras-response)))
  "Returns string type for a service object of type 'Phytagoras-response"
  "tugas4/PhytagorasResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Phytagoras-response>)))
  "Returns md5sum for a message object of type '<Phytagoras-response>"
  "55d1a215f43fd1f64eb105a505b172c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Phytagoras-response)))
  "Returns md5sum for a message object of type 'Phytagoras-response"
  "55d1a215f43fd1f64eb105a505b172c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Phytagoras-response>)))
  "Returns full string definition for message of type '<Phytagoras-response>"
  (cl:format cl:nil "float64 magnitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Phytagoras-response)))
  "Returns full string definition for message of type 'Phytagoras-response"
  (cl:format cl:nil "float64 magnitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Phytagoras-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Phytagoras-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Phytagoras-response
    (cl:cons ':magnitude (magnitude msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Phytagoras)))
  'Phytagoras-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Phytagoras)))
  'Phytagoras-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Phytagoras)))
  "Returns string type for a service object of type '<Phytagoras>"
  "tugas4/Phytagoras")