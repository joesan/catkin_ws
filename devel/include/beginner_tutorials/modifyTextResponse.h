// Generated by gencpp from file beginner_tutorials/modifyTextResponse.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_MODIFYTEXTRESPONSE_H
#define BEGINNER_TUTORIALS_MESSAGE_MODIFYTEXTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct modifyTextResponse_
{
  typedef modifyTextResponse_<ContainerAllocator> Type;

  modifyTextResponse_()
    : modifiedString()  {
    }
  modifyTextResponse_(const ContainerAllocator& _alloc)
    : modifiedString(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _modifiedString_type;
  _modifiedString_type modifiedString;





  typedef boost::shared_ptr< ::beginner_tutorials::modifyTextResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::modifyTextResponse_<ContainerAllocator> const> ConstPtr;

}; // struct modifyTextResponse_

typedef ::beginner_tutorials::modifyTextResponse_<std::allocator<void> > modifyTextResponse;

typedef boost::shared_ptr< ::beginner_tutorials::modifyTextResponse > modifyTextResponsePtr;
typedef boost::shared_ptr< ::beginner_tutorials::modifyTextResponse const> modifyTextResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::modifyTextResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::modifyTextResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::beginner_tutorials::modifyTextResponse_<ContainerAllocator1> & lhs, const ::beginner_tutorials::modifyTextResponse_<ContainerAllocator2> & rhs)
{
  return lhs.modifiedString == rhs.modifiedString;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::beginner_tutorials::modifyTextResponse_<ContainerAllocator1> & lhs, const ::beginner_tutorials::modifyTextResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::modifyTextResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::modifyTextResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::modifyTextResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::modifyTextResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::modifyTextResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::modifyTextResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::modifyTextResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "95b12ca9d74aa3ee6153e25f50ebb543";
  }

  static const char* value(const ::beginner_tutorials::modifyTextResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x95b12ca9d74aa3eeULL;
  static const uint64_t static_value2 = 0x6153e25f50ebb543ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::modifyTextResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/modifyTextResponse";
  }

  static const char* value(const ::beginner_tutorials::modifyTextResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::modifyTextResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#response\n"
"string modifiedString\n"
;
  }

  static const char* value(const ::beginner_tutorials::modifyTextResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::modifyTextResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.modifiedString);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct modifyTextResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::modifyTextResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::modifyTextResponse_<ContainerAllocator>& v)
  {
    s << indent << "modifiedString: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.modifiedString);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_MODIFYTEXTRESPONSE_H