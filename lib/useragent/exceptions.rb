module UserAgent

  # This is the base UserAgent exception class.
  # Errors will be considered fatal, given the infinitely configurable
  # nature of user-agent generation. So we opt to throw exceptions the
  # minute we get something we don't expect.
  # Fail early, fail hard.

  class Exception < StandardError
  end

  # Inputs are incorrect type, or missing required items, etc
  class InvalidInput < Exception
  end

  # The requested operating system is not supported
  class UnsupportedOS < Exception
  end

  # The requested device type (manufacturer) is not supported
  class UnsupportedDevice < Exception
  end

  # The requested device model is not supported
  class UnsupportedDeviceModel < Exception
  end

  # The OS version does not have an entry in the OS->Build map
  class UnsupportedVersion < Exception
  end

  # The functionality is not yet implemented
  class NotImplemented < Exception
  end

end