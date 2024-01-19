// Generated by gencpp from file tugas4/PhytagorasResponse.msg
// DO NOT EDIT!


#ifndef TUGAS4_MESSAGE_PHYTAGORASRESPONSE_H
#define TUGAS4_MESSAGE_PHYTAGORASRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tugas4
{
template <class ContainerAllocator>
struct PhytagorasResponse_
{
  typedef PhytagorasResponse_<ContainerAllocator> Type;

  PhytagorasResponse_()
    : magnitude(0.0)  {
    }
  PhytagorasResponse_(const ContainerAllocator& _alloc)
    : magnitude(0.0)  {
  (void)_alloc;
    }



   typedef double _magnitude_type;
  _magnitude_type magnitude;





  typedef boost::shared_ptr< ::tugas4::PhytagorasResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tugas4::PhytagorasResponse_<ContainerAllocator> const> ConstPtr;

}; // struct PhytagorasResponse_

typedef ::tugas4::PhytagorasResponse_<std::allocator<void> > PhytagorasResponse;

typedef boost::shared_ptr< ::tugas4::PhytagorasResponse > PhytagorasResponsePtr;
typedef boost::shared_ptr< ::tugas4::PhytagorasResponse const> PhytagorasResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tugas4::PhytagorasResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tugas4::PhytagorasResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tugas4::PhytagorasResponse_<ContainerAllocator1> & lhs, const ::tugas4::PhytagorasResponse_<ContainerAllocator2> & rhs)
{
  return lhs.magnitude == rhs.magnitude;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tugas4::PhytagorasResponse_<ContainerAllocator1> & lhs, const ::tugas4::PhytagorasResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tugas4

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tugas4::PhytagorasResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tugas4::PhytagorasResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tugas4::PhytagorasResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tugas4::PhytagorasResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tugas4::PhytagorasResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tugas4::PhytagorasResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tugas4::PhytagorasResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f3a902f9783110e2b8fe7c475e26788e";
  }

  static const char* value(const ::tugas4::PhytagorasResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf3a902f9783110e2ULL;
  static const uint64_t static_value2 = 0xb8fe7c475e26788eULL;
};

template<class ContainerAllocator>
struct DataType< ::tugas4::PhytagorasResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tugas4/PhytagorasResponse";
  }

  static const char* value(const ::tugas4::PhytagorasResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tugas4::PhytagorasResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 magnitude\n"
"\n"
;
  }

  static const char* value(const ::tugas4::PhytagorasResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tugas4::PhytagorasResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.magnitude);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PhytagorasResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tugas4::PhytagorasResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tugas4::PhytagorasResponse_<ContainerAllocator>& v)
  {
    s << indent << "magnitude: ";
    Printer<double>::stream(s, indent + "  ", v.magnitude);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUGAS4_MESSAGE_PHYTAGORASRESPONSE_H
