# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

if (CMAKE_CXX_COMPILER_VERSION VERSION_GREATER_EQUAL 16.0)
  # MSVC has no specific options to set language standards, but set them as
  # empty strings anyways so the feature test infrastructure can at least check
  # to see if they are defined.
  set(CMAKE_CXX98_STANDARD_COMPILE_OPTION "")
  set(CMAKE_CXX98_EXTENSION_COMPILE_OPTION "")
  set(CMAKE_CXX11_STANDARD_COMPILE_OPTION "")
  set(CMAKE_CXX11_EXTENSION_COMPILE_OPTION "")
  set(CMAKE_CXX14_STANDARD_COMPILE_OPTION "")
  set(CMAKE_CXX14_EXTENSION_COMPILE_OPTION "")
  set(CMAKE_CXX17_STANDARD_COMPILE_OPTION "")
  set(CMAKE_CXX17_EXTENSION_COMPILE_OPTION "")

  # There is no meaningful default for this
  set(CMAKE_CXX_STANDARD_DEFAULT "")
endif()

macro(cmake_record_cxx_compile_features)
  if (NOT CMAKE_CXX_COMPILER_VERSION VERSION_LESS 16.0)
    list(APPEND CMAKE_CXX_COMPILE_FEATURES
      cxx_std_98
      cxx_std_11
      cxx_std_14
      cxx_std_17
      )
    _record_compiler_features(CXX "" CMAKE_CXX_COMPILE_FEATURES)
  endif()
endmacro()
