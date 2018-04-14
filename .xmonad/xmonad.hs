import XMonad
import XMonad.Hooks.DynamicLog

myModMask = mod4Mask

main = xmonad =<< xmobar myConfig

myConfig = defaultConfig {
    modMask = myModMask
}
