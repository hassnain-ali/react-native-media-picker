///
/// CropResult.hpp
/// This file was generated by nitrogen. DO NOT MODIFY THIS FILE.
/// https://github.com/mrousavy/nitro
/// Copyright © 2024 Marc Rousavy @ Margelo
///

#pragma once

#if __has_include(<NitroModules/JSIConverter.hpp>)
#include <NitroModules/JSIConverter.hpp>
#else
#error NitroModules cannot be found! Are you sure you installed NitroModules properly?
#endif
#if __has_include(<NitroModules/NitroDefines.hpp>)
#include <NitroModules/NitroDefines.hpp>
#else
#error NitroModules cannot be found! Are you sure you installed NitroModules properly?
#endif



#include <string>

namespace margelo::nitro::multipleimagepicker {

  /**
   * A struct which can be represented as a JavaScript object (CropResult).
   */
  struct CropResult {
  public:
    std::string path     SWIFT_PRIVATE;
    double width     SWIFT_PRIVATE;
    double height     SWIFT_PRIVATE;

  public:
    explicit CropResult(std::string path, double width, double height): path(path), width(width), height(height) {}
  };

} // namespace margelo::nitro::multipleimagepicker

namespace margelo::nitro {

  using namespace margelo::nitro::multipleimagepicker;

  // C++ CropResult <> JS CropResult (object)
  template <>
  struct JSIConverter<CropResult> {
    static inline CropResult fromJSI(jsi::Runtime& runtime, const jsi::Value& arg) {
      jsi::Object obj = arg.asObject(runtime);
      return CropResult(
        JSIConverter<std::string>::fromJSI(runtime, obj.getProperty(runtime, "path")),
        JSIConverter<double>::fromJSI(runtime, obj.getProperty(runtime, "width")),
        JSIConverter<double>::fromJSI(runtime, obj.getProperty(runtime, "height"))
      );
    }
    static inline jsi::Value toJSI(jsi::Runtime& runtime, const CropResult& arg) {
      jsi::Object obj(runtime);
      obj.setProperty(runtime, "path", JSIConverter<std::string>::toJSI(runtime, arg.path));
      obj.setProperty(runtime, "width", JSIConverter<double>::toJSI(runtime, arg.width));
      obj.setProperty(runtime, "height", JSIConverter<double>::toJSI(runtime, arg.height));
      return obj;
    }
    static inline bool canConvert(jsi::Runtime& runtime, const jsi::Value& value) {
      if (!value.isObject()) {
        return false;
      }
      jsi::Object obj = value.getObject(runtime);
      if (!JSIConverter<std::string>::canConvert(runtime, obj.getProperty(runtime, "path"))) return false;
      if (!JSIConverter<double>::canConvert(runtime, obj.getProperty(runtime, "width"))) return false;
      if (!JSIConverter<double>::canConvert(runtime, obj.getProperty(runtime, "height"))) return false;
      return true;
    }
  };

} // namespace margelo::nitro
