import React from 'react'
import { SafeAreaView, StatusBar, StyleSheet, ViewProps } from 'react-native'
import useTheme from '../hook/useTheme'

interface Props extends ViewProps {
  level?: 0 | 1 | 2 | 3
}

export function Container({
  children,
  style: containerStyle,
  level = 0,
}: Props) {
  const theme = useTheme()

  const backgroundColor = !level
    ? theme.background
    : theme[`background_${level}` as keyof typeof theme]

  return (
    <SafeAreaView
      style={[
        style.container,
        {
          backgroundColor,
          paddingTop: StatusBar.currentHeight,
          paddingBottom: 50,
        },
        containerStyle,
      ]}
    >
      {children}
    </SafeAreaView>
  )
}

const style = StyleSheet.create({
  container: {
    flex: 1,
  },
})
