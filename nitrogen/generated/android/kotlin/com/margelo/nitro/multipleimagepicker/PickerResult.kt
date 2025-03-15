///
/// PickerResult.kt
/// This file was generated by nitrogen. DO NOT MODIFY THIS FILE.
/// https://github.com/mrousavy/nitro
/// Copyright © 2024 Marc Rousavy @ Margelo
///

package com.margelo.nitro.multipleimagepicker

import androidx.annotation.Keep
import com.facebook.proguard.annotations.DoNotStrip
import com.margelo.nitro.core.*

/**
 * Represents the JavaScript object/struct "PickerResult".
 */
@DoNotStrip
@Keep
data class PickerResult(
  val localIdentifier: String,
  val width: Double,
  val height: Double,
  val mime: String,
  val size: Double,
  val bucketId: Double?,
  val realPath: String?,
  val parentFolderName: String?,
  val creationDate: Double?,
  val crop: Boolean?,
  val path: String,
  val type: ResultType,
  val duration: Double?,
  val thumbnail: String?,
  val fileName: String?
)
