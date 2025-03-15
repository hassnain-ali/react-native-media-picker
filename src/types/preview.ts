import { Language } from './config'
import { ResultType } from './result'

// PREVIEW
export type NitroPreviewConfig = {
  language: Language

  /**
   * Auto play video when open preview.
   *
   * @platform iOS, Android
   */
  videoAutoPlay?: boolean
}

export interface PreviewConfig
  extends Omit<NitroPreviewConfig, 'language' | 'backgroundColor'> {
  /**
   * Language options for the picker.
   *
   * @platform ios
   *
   * @description
   * - 'system': 🌐 System default
   * - 'zh-Hans': 🇨🇳 Simplified Chinese
   * - 'zh-Hant': 🇹🇼 Traditional Chinese
   * - 'ja': 🇯🇵 Japanese
   * - 'ko': 🇰🇷 Korean
   * - 'en': 🇬🇧 English
   * - 'th': 🇹🇭 Thai
   * - 'id': 🇮🇩 Indonesian
   * - 'vi': 🇻🇳 Vietnamese (My Country)
   * - 'ru': 🇷🇺 Russian
   * - 'de': 🇩🇪 German
   * - 'fr': 🇫🇷 French
   * - 'ar': 🇸🇦 Arabic
   */
  language?: Language

  onLongPress?: (index: number) => void
}

export interface MediaPreview {
  type: ResultType
  path?: string
  thumbnail?: string
  localIdentifier?: string
}
