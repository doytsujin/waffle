{-# LANGUAGE OverloadedStrings #-}
module UI.StyleUI where

import qualified Brick.Widgets.List as L
import qualified Graphics.Vty as V
import qualified Brick.Widgets.FileBrowser as FB
import qualified Brick.AttrMap as A
import qualified Brick.Widgets.Border.Style as BS
import qualified Brick.Widgets.Border as B
import Brick.Util (fg, on)

-- TODO: this all feels very messy
customAttr :: A.AttrName
customAttr = "custom"

custom2Attr :: A.AttrName
custom2Attr = "custom2"

directoryAttr :: A.AttrName
directoryAttr = "directoryAttr"

fileAttr :: A.AttrName
fileAttr = "fileAttr"

indexSearchServerAttr :: A.AttrName
indexSearchServerAttr = "indexSearchServerAttr"

genericTypeAttr :: A.AttrName
genericTypeAttr = "genericTypeAttr"

numberPrefixAttr :: A.AttrName
numberPrefixAttr = "numberPrefixAttr"

linkAttr :: A.AttrName
linkAttr = "linkAttr"

textAttr :: A.AttrName
textAttr = "textAttr"

-- TODO: bad name now...
asteriskAttr :: A.AttrName
asteriskAttr = "asteriskAttr"

titleAttr :: A.AttrName
titleAttr = "titleAttr"

errorAttr :: A.AttrName
errorAttr = "error"

theMap :: A.AttrMap
theMap = A.attrMap V.defAttr
  [ (L.listAttr,                V.yellow `on` V.rgbColor (0 :: Int) (0 :: Int) (0 :: Int))
  , (L.listSelectedAttr,        (V.defAttr `V.withStyle` V.bold) `V.withForeColor` V.white)
  , (directoryAttr,             fg V.red)
  , (fileAttr,                  fg V.cyan)
  , (indexSearchServerAttr,     fg V.magenta)
  , (linkAttr,                  fg (V.rgbColor (28 :: Int) (152 :: Int) (255 :: Int)))
  , (textAttr,                  fg (V.rgbColor (255 :: Int) (255 :: Int) (0 :: Int)))
  , (genericTypeAttr,           fg V.green)
  , (numberPrefixAttr,          fg (V.rgbColor (252 :: Int) (40 :: Int) (254 :: Int)))
  , (customAttr,                (V.defAttr `V.withStyle` V.bold) `V.withForeColor` V.white)
  , (custom2Attr,               fg V.yellow)
  , (titleAttr,                 (V.defAttr `V.withStyle` V.reverseVideo) `V.withStyle` V.bold `V.withForeColor` V.white)
  , (asteriskAttr,              fg V.white)
  , (FB.fileBrowserCurrentDirectoryAttr, V.white `on` V.blue)
  , (FB.fileBrowserSelectionInfoAttr, V.white `on` V.blue)
  , (FB.fileBrowserDirectoryAttr, fg V.blue)
  , (FB.fileBrowserBlockDeviceAttr, fg V.magenta)
  , (FB.fileBrowserCharacterDeviceAttr, fg V.green)
  , (FB.fileBrowserNamedPipeAttr, fg V.yellow)
  , (FB.fileBrowserSymbolicLinkAttr, fg V.cyan)
  , (FB.fileBrowserUnixSocketAttr, fg V.red)
  , (FB.fileBrowserSelectedAttr, V.white `on` V.magenta)
  , (errorAttr, fg V.red)
  ]

customBorder :: BS.BorderStyle
customBorder = BS.BorderStyle
  { BS.bsCornerTL = '▚'
  , BS.bsCornerTR = '▚'
  , BS.bsCornerBR = '▚'
  , BS.bsCornerBL = '▚'
  , BS.bsIntersectFull = ' '
  , BS.bsIntersectL = ' '
  , BS.bsIntersectR = ' '
  , BS.bsIntersectT = ' '
  , BS.bsIntersectB = ' '
  , BS.bsHorizontal = '▚'
  , BS.bsVertical = ' '
  }

borderMappings :: [(A.AttrName, V.Attr)]
borderMappings = [(B.borderAttr, V.cyan `on` V.rgbColor (0 :: Int) (0 :: Int) (0 :: Int))]
