-- Imports
import XMonad
import XMonad.Config.Desktop
import XMonad.Util.SpawnOnce
-- import XMonad.Layout.Spacing
import XMonad.Util.Run
-- import System.IO
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks


main = do
	xmproc <- spawnPipe "xmobar"

	xmonad $ docks defaultConfig
		{ layoutHook = avoidStruts $ layoutHook defaultConfig
		, terminal = "termite"
		, borderWidth = 3
		, normalBorderColor = "#d0b0ff"
		, focusedBorderColor = "#6603fc"
		, logHook = dynamicLogWithPP xmobarPP 
			{ ppOutput = hPutStrLn xmproc
			}
		, startupHook = myStartupHook
		}


myStartupHook = do
	{ spawnOnce "bash ~/scripts/xmonad-basics-launch.sh"
	}
