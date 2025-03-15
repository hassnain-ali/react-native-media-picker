///
/// NitroCameraConfig.swift
/// This file was generated by nitrogen. DO NOT MODIFY THIS FILE.
/// https://github.com/mrousavy/nitro
/// Copyright © 2024 Marc Rousavy @ Margelo
///

import NitroModules

/**
 * Represents an instance of `NitroCameraConfig`, backed by a C++ struct.
 */
public typealias NitroCameraConfig = margelo.nitro.multipleimagepicker.NitroCameraConfig

public extension NitroCameraConfig {
  private typealias bridge = margelo.nitro.multipleimagepicker.bridge.swift

  /**
   * Create a new instance of `NitroCameraConfig`.
   */
  init(mediaType: MediaType, presentation: Presentation, language: Language, crop: PickerCropConfig?, isSaveSystemAlbum: Bool?, color: Double?, cameraDevice: CameraDevice?, videoMaximumDuration: Double?) {
    self.init(mediaType, presentation, language, { () -> bridge.std__optional_PickerCropConfig_ in
      if let __unwrappedValue = crop {
        return bridge.create_std__optional_PickerCropConfig_(__unwrappedValue)
      } else {
        return .init()
      }
    }(), { () -> bridge.std__optional_bool_ in
      if let __unwrappedValue = isSaveSystemAlbum {
        return bridge.create_std__optional_bool_(__unwrappedValue)
      } else {
        return .init()
      }
    }(), { () -> bridge.std__optional_double_ in
      if let __unwrappedValue = color {
        return bridge.create_std__optional_double_(__unwrappedValue)
      } else {
        return .init()
      }
    }(), { () -> bridge.std__optional_CameraDevice_ in
      if let __unwrappedValue = cameraDevice {
        return bridge.create_std__optional_CameraDevice_(__unwrappedValue)
      } else {
        return .init()
      }
    }(), { () -> bridge.std__optional_double_ in
      if let __unwrappedValue = videoMaximumDuration {
        return bridge.create_std__optional_double_(__unwrappedValue)
      } else {
        return .init()
      }
    }())
  }

  var mediaType: MediaType {
    @inline(__always)
    get {
      return self.__mediaType
    }
    @inline(__always)
    set {
      self.__mediaType = newValue
    }
  }
  
  var presentation: Presentation {
    @inline(__always)
    get {
      return self.__presentation
    }
    @inline(__always)
    set {
      self.__presentation = newValue
    }
  }
  
  var language: Language {
    @inline(__always)
    get {
      return self.__language
    }
    @inline(__always)
    set {
      self.__language = newValue
    }
  }
  
  var crop: PickerCropConfig? {
    @inline(__always)
    get {
      return { () -> PickerCropConfig? in
        if let __unwrapped = self.__crop.value {
          return __unwrapped
        } else {
          return nil
        }
      }()
    }
    @inline(__always)
    set {
      self.__crop = { () -> bridge.std__optional_PickerCropConfig_ in
        if let __unwrappedValue = newValue {
          return bridge.create_std__optional_PickerCropConfig_(__unwrappedValue)
        } else {
          return .init()
        }
      }()
    }
  }
  
  var isSaveSystemAlbum: Bool? {
    @inline(__always)
    get {
      return self.__isSaveSystemAlbum.value
    }
    @inline(__always)
    set {
      self.__isSaveSystemAlbum = { () -> bridge.std__optional_bool_ in
        if let __unwrappedValue = newValue {
          return bridge.create_std__optional_bool_(__unwrappedValue)
        } else {
          return .init()
        }
      }()
    }
  }
  
  var color: Double? {
    @inline(__always)
    get {
      return self.__color.value
    }
    @inline(__always)
    set {
      self.__color = { () -> bridge.std__optional_double_ in
        if let __unwrappedValue = newValue {
          return bridge.create_std__optional_double_(__unwrappedValue)
        } else {
          return .init()
        }
      }()
    }
  }
  
  var cameraDevice: CameraDevice? {
    @inline(__always)
    get {
      return self.__cameraDevice.value
    }
    @inline(__always)
    set {
      self.__cameraDevice = { () -> bridge.std__optional_CameraDevice_ in
        if let __unwrappedValue = newValue {
          return bridge.create_std__optional_CameraDevice_(__unwrappedValue)
        } else {
          return .init()
        }
      }()
    }
  }
  
  var videoMaximumDuration: Double? {
    @inline(__always)
    get {
      return self.__videoMaximumDuration.value
    }
    @inline(__always)
    set {
      self.__videoMaximumDuration = { () -> bridge.std__optional_double_ in
        if let __unwrappedValue = newValue {
          return bridge.create_std__optional_double_(__unwrappedValue)
        } else {
          return .init()
        }
      }()
    }
  }
}
