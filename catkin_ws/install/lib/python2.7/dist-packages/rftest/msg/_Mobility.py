# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rftest/Mobility.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Mobility(genpy.Message):
  _md5sum = "f33d1055a48448022b44b1ff8e17fe19"
  _type = "rftest/Mobility"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 left
int32 right
int32 j1
int32 j2
int32 j3
int32 j4
int32 j51
int32 j52
int32 mode
"""
  __slots__ = ['left','right','j1','j2','j3','j4','j51','j52','mode']
  _slot_types = ['int32','int32','int32','int32','int32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       left,right,j1,j2,j3,j4,j51,j52,mode

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Mobility, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.left is None:
        self.left = 0
      if self.right is None:
        self.right = 0
      if self.j1 is None:
        self.j1 = 0
      if self.j2 is None:
        self.j2 = 0
      if self.j3 is None:
        self.j3 = 0
      if self.j4 is None:
        self.j4 = 0
      if self.j51 is None:
        self.j51 = 0
      if self.j52 is None:
        self.j52 = 0
      if self.mode is None:
        self.mode = 0
    else:
      self.left = 0
      self.right = 0
      self.j1 = 0
      self.j2 = 0
      self.j3 = 0
      self.j4 = 0
      self.j51 = 0
      self.j52 = 0
      self.mode = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_9i().pack(_x.left, _x.right, _x.j1, _x.j2, _x.j3, _x.j4, _x.j51, _x.j52, _x.mode))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 36
      (_x.left, _x.right, _x.j1, _x.j2, _x.j3, _x.j4, _x.j51, _x.j52, _x.mode,) = _get_struct_9i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_9i().pack(_x.left, _x.right, _x.j1, _x.j2, _x.j3, _x.j4, _x.j51, _x.j52, _x.mode))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 36
      (_x.left, _x.right, _x.j1, _x.j2, _x.j3, _x.j4, _x.j51, _x.j52, _x.mode,) = _get_struct_9i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_9i = None
def _get_struct_9i():
    global _struct_9i
    if _struct_9i is None:
        _struct_9i = struct.Struct("<9i")
    return _struct_9i
