import XMonad
import XMonad.Layout
import XMonad.Layout.IM
import XMonad.Layout.Named
import XMonad.Layout.Tabbed
import XMonad.Layout.Spacing           -- this makes smart space around windows
import XMonad.Util.EZConfig            -- removeKeys, additionalKeys
import XMonad.Util.Run(spawnPipe)      -- spawnPipe, hPutStrLn
import XMonad.Layout.Magnifier         -- this makes window bigger
import XMonad.Layout.ResizableTile     -- Resizable Horizontal border
import XMonad.Layout.ThreeColumns      -- for many windows
import Control.Monad (liftM2)          -- myManageHookShift
import qualified XMonad.StackSet as W  -- myManageHookShift
import System.IO                       -- for xmobar
import XMonad.Hooks.DynamicLog         -- for xmobar
import XMonad.Hooks.ManageDocks        -- avoid xmobar area
import XMonad.Layout.DragPane          -- see only two window
import XMonad.Layout.ToggleLayouts     -- Full window at any time
import XMonad.Layout.NoBorders         -- In Full mode, border is no use

myModMask = mod4Mask

myLayout =   (spacing 4 $ ResizableTall 1 (3/100) (1/2) [])
    |||  (magnifiercz 1.2 (ThreeCol 1 (3/100) (1/2)))
    |||  (spacing 2 $ 
             (dragPane Horizontal (1/10) (1/2)) ||| (dragPane Vertical   (1/10) (1/2))
         )

myLogHook dest = dynamicLogWithPP defaultPP { 
    ppOutput = hPutStrLn dest
    , ppVisible = wrap "(" ")"
}   

main = do
    xmproc <- spawnPipe "xmobar /home/knagashi/.xmobarrc"
    xmonad $ defaultConfig {
        modMask = myModMask
        , layoutHook = toggleLayouts (noBorders Full) $ avoidStruts $ myLayout
        , logHook = myLogHook xmproc
    }
