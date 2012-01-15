
;;;### (autoloads (palette-swatch palette-brightness-scale palette
;;;;;;  palette-toggle-cursor-color palette-toggle-verbose palette-decrease-blue
;;;;;;  palette-increase-blue palette-decrease-green palette-increase-green
;;;;;;  palette-decrease-red palette-increase-red palette-decrease-value
;;;;;;  palette-increase-value palette-decrease-saturation palette-increase-saturation
;;;;;;  palette-decrease-hue palette-increase-hue palette-up+pick
;;;;;;  palette-down+pick palette-left+pick palette-right+pick palette-up
;;;;;;  palette-down palette-left palette-right palette-where-is-color
;;;;;;  palette-quit palette-exit palette-refresh palette-restore-old-color
;;;;;;  palette-swap-last-color palette-save-new-color palette-pick-color-complement
;;;;;;  palette-pick-color-by-hsv palette-pick-color-by-rgb palette-pick-color-by-name
;;;;;;  palette-pick-foreground-at-point palette-pick-background-at-point
;;;;;;  palette-pick-foreground-at-mouse palette-pick-background-at-mouse
;;;;;;  palette-foreground-at-point palette-background-at-point palette-foreground-at-mouse
;;;;;;  palette-background-at-mouse palette-current-color palette-rgb-info
;;;;;;  palette-hsv-info palette-hex-info palette-help palette-popup-menu
;;;;;;  palette-save-color-hook palette-exit-hook palette-change-color-hook
;;;;;;  palette-font palette-message-info palette-verbose-flag palette-update-cursor-color-flag
;;;;;;  Color-Palette) "../palette" "../palette.el" (20224 64853))
;;; Generated autoloads from ../palette.el

(let ((loads (get 'Color-Palette 'custom-loads))) (if (member '"../palette" loads) nil (put 'Color-Palette 'custom-loads (cons '"../palette" loads))))

(defvar palette-update-cursor-color-flag nil "\
*Non-nil means dynamically update the cursor to make it stand out.
This can cause redisplay of the palette frame, which means a slowdown.")

(custom-autoload 'palette-update-cursor-color-flag "../palette" t)

(defvar palette-verbose-flag nil "\
*Non-nil: display color info often; nil: display it only on demand.
Non-nil slows things down to recalculate color components often.")

(custom-autoload 'palette-verbose-flag "../palette" t)

(defvar palette-message-info 'all "\
*Type of information to print in a palette message.
Possible values are:
 all - RGB hex, RGB decimal, and HSV decimal information
 hex - RGB hex information
 hsv - HSV decimal information
 rgb - RGB decimal information
 hex+hsv - RGB hex and HSV decimal information
 hex+rgb - RGB hex and RGB decimal information
 rgb+hsv - RGB decimal and HSV decimal information")

(custom-autoload 'palette-message-info "../palette" t)

(defvar palette-font (and window-system (or (car (x-list-fonts "-*-Courier-*-*-*-*-5-*-*-*-*-*-iso8859-1" nil nil 1)) (car (x-list-fonts "-*-fixed-*-*-*-*-5-*-*-*-*-*-iso8859-1" nil nil 1)) (car (x-list-fonts "-*-Terminal-*-*-*-*-5-*-*-*-*-*-iso8859-1" nil nil 1)) (car (x-list-fonts "-*-*-*-*-*-*-5-*-*-*-*-*-iso8859-1" nil nil 1)))) "\
*Font to use for the color palette.
The only characters in the font that are used are the space character
and `e'.  The only things that matter about the font are these:

 - The smaller the font, the smaller the color palette.  A size of 5
   is good, producing a frame that is about 8cm x 13 cm inside.

 - The squarer the font, the better, so that the palette is not
   unnecessarily elongated.  Short, fat fonts are good.

 - A fixed font is good, so that the brightness-indicator line, which
   is a string of `e' characters, appears the same width as the
   Brightness palette.

NOTE: Do not try to use library `palette.el' without a window manager.
      That is, do not try to use it with `emacs -nw'.")

(custom-autoload 'palette-font "../palette" t)

(defvar palette-change-color-hook nil "\
*Functions to run at the end of `palette-set-current-color'.
Typically, applications bind this hook to a function that does
something with the new value of `palette-current-color' after a color
change.")

(custom-autoload 'palette-change-color-hook "../palette" t)

(defvar palette-exit-hook nil "\
*Functions to run at the end of `palette-exit'.
This is reset to nil after running.
These hook functions are run after `palette-quit' is run.

Typically, applications bind this hook to a function that does
something with `palette-current-color'.  When the user exits the
palette (using `\\<palette-mode-map>\\[palette-exit]), the value of `palette-current-color' can be used
by this hook.")

(custom-autoload 'palette-exit-hook "../palette" t)

(defvar palette-save-color-hook nil "\
*Functions to run at the end of `palette-save-new-color'.")

(custom-autoload 'palette-save-color-hook "../palette" t)

(autoload 'palette-popup-menu "palette" "\
Display a popup menu of palette commands.

\(fn EVENT)" t nil)

(autoload 'palette-help "palette" "\
Describe Color Palette mode.

\(fn)" t nil)

(autoload 'palette-hex-info "palette" "\
Print the hexadecimal RGB string for COLOR.
With prefix arg, prompts for color name.
Otherwise, uses the color at the cursor.

\(fn COLOR)" t nil)

(autoload 'palette-hsv-info "palette" "\
Print the HSV components of COLOR.
With prefix arg, prompts for color name.
Otherwise, uses the color at the cursor.

\(fn COLOR)" t nil)

(autoload 'palette-rgb-info "palette" "\
Print the RGB components of COLOR.
With prefix arg, prompts for color name.
Otherwise, uses the color at the cursor.

\(fn COLOR)" t nil)

(autoload 'palette-current-color "palette" "\
Return the current palette color, `palette-current-color'.
Interactively, display a message with information about the color.

\(fn &optional MSG-P)" t nil)

(defalias 'eyedrop-background-at-mouse 'palette-background-at-mouse)

(autoload 'palette-background-at-mouse "palette" "\
Return the background color under the mouse pointer.
Non-nil optional arg MSG-P means display an informative message.

\(fn EVENT &optional MSG-P)" t nil)

(defalias 'eyedrop-foreground-at-mouse 'palette-foreground-at-mouse)

(autoload 'palette-foreground-at-mouse "palette" "\
Return the foreground color under the mouse pointer.
Non-nil optional arg MSG-P means display an informative message.

\(fn EVENT &optional MSG-P)" t nil)

(defalias 'background-color 'palette-background-at-point)

(defalias 'eyedrop-background-at-point 'palette-background-at-point)

(autoload 'palette-background-at-point "palette" "\
Return the background color under the text cursor.
There need be no defined face at the cursor position (point).
Non-nil optional arg MSG-P means display an informative message.

NOTE: The cursor is positioned in each of the windows so that it
      corresponds as well as possible to the other windows.  However,
      this correspondance is by no means exact.  In particular, the
      color in the main Palette buffer (`Hue x Saturation') does not
      necessarily reflect the current color accurately.

      If you want information about the current color, then use \\<palette-mode-map>`\\[palette-current-color]'
      instead.  (Or use `\\[palette-background-at-point]' from the
      color-swatch buffer (`Current/Original').

\(fn &optional MSG-P)" t nil)

(defalias 'foreground-color 'palette-foreground-at-point)

(defalias 'eyedrop-foreground-at-point 'palette-foreground-at-point)

(autoload 'palette-foreground-at-point "palette" "\
Return the foreground color under the text cursor.
There need be no defined face at the cursor position (point).
Non-nil optional arg MSG-P means display an informative message.

\(fn &optional MSG-P)" t nil)

(defalias 'eyedrop-pick-background-at-mouse 'palette-pick-background-at-mouse)

(autoload 'palette-pick-background-at-mouse "palette" "\
Set the current color to the background color under the mouse pointer.
The background color is saved in `palette-picked-background' and
`palette-last-picked-color'.  The new current color is returned.
Non-nil optional arg SHOW-P (prefix arg) means display the palette.
If called from the color palette, update the current color there.

\(fn EVENT &optional SHOW-P)" t nil)

(defalias 'eyedrop-pick-foreground-at-mouse 'palette-pick-foreground-at-mouse)

(autoload 'palette-pick-foreground-at-mouse "palette" "\
Set the current color to the foreground color under the mouse pointer.
The foreground color is saved in `palette-picked-foreground' and
`palette-last-picked-color'.  The new current color is returned.
Non-nil optional arg SHOW-P (prefix arg) means display the palette.
If called from the color palette, update the current color there.

\(fn EVENT &optional SHOW-P)" t nil)

(defalias 'eyedropper-background 'palette-pick-background-at-point)

(defalias 'pick-background-color 'palette-pick-background-at-point)

(defalias 'eyedrop-pick-background-at-point 'palette-pick-background-at-point)

(autoload 'palette-pick-background-at-point "palette" "\
Set the current color to the background color under the text cursor.
The background color is saved in `palette-picked-background' and
`palette-last-picked-color'.  The (new) current color is returned.
Non-nil optional arg SHOW-P (prefix arg) means display the palette.
If called from the color palette, update the current color there.

\(fn &optional SHOW-P)" t nil)

(defalias 'eyedropper-foreground 'palette-pick-foreground-at-point)

(defalias 'pick-foreground-color 'palette-pick-foreground-at-point)

(defalias 'eyedrop-pick-foreground-at-point 'palette-pick-foreground-at-point)

(autoload 'palette-pick-foreground-at-point "palette" "\
Set the current color to the foreground color under the text cursor.
The foreground color is saved in `palette-picked-foreground' and
`palette-last-picked-color'.  The (new) current color is returned.
Non-nil optional arg SHOW-P (prefix arg) means display the palette.
If called from the color palette, update the current color there.

\(fn &optional SHOW-P)" t nil)

(autoload 'palette-pick-color-by-name "palette" "\
Set the current color to a color you name.
Instead of a color name, you can use an RGB string #XXXXXXXXXXXX,
where each X is a hex digit.  The number of Xs must be a multiple of
3, with the same number of Xs for each of red, green, and blue.
If you enter an empty color name, then a color is picked randomly.
The new current color is returned.

\(fn COLOR)" t nil)

(defalias 'rgb 'palette-pick-color-by-rgb)

(autoload 'palette-pick-color-by-rgb "palette" "\
Set the current color by providing red, green, and blue components.
Each component is from 0.0 to 1.0 inclusive.

\(fn RED GREEN BLUE)" t nil)

(defalias 'hsv 'palette-pick-color-by-hsv)

(autoload 'palette-pick-color-by-hsv "palette" "\
Set the current color by providing hue, saturation, and value.
Each component is from 0.0 to 1.0 inclusive.

\(fn HUE SATURATION VALUE)" t nil)

(defalias 'complement 'palette-pick-color-complement)

(autoload 'palette-pick-color-complement "palette" "\
Set the current palette color to its complement.

\(fn)" t nil)

(autoload 'palette-save-new-color "palette" "\
Save the current color as the old (original) color.
The old color becomes the last color, so it is available by `\\<palette-mode-map>\\[palette-swap-last-color]'.
This command runs `palette-save-color-hook' at the end.
The saved color is returned.

\(fn)" t nil)

(autoload 'palette-swap-last-color "palette" "\
Swap the last color and the current color.

\(fn)" t nil)

(autoload 'palette-restore-old-color "palette" "\
Restore the old (original) color as the current color.

\(fn)" t nil)

(autoload 'palette-refresh "palette" "\
Refresh the color palette.

\(fn)" t nil)

(autoload 'palette-exit "palette" "\
Exit the color palette with exit action, if defined.
Call `palette-quit', then run `palette-exit-hook', then reset
`palette-action' and `palette-exit-hook'.
Turn off `blink-cursor-mode', if it was off before showing palette.
Return `palette-current-color'.

\(fn)" t nil)

(autoload 'palette-quit "palette" "\
Quit the color palette without any exit action.
Unlike palette-exit', this does not run `palette-exit-hook'.
Unless DONT-RESET is non-nil, reset `palette-action' and
 `palette-exit-hook'.
Turn off `blink-cursor-mode', if it was off before showing palette.
Return `palette-current-color'.

\(fn &optional DONT-RESET)" t nil)

(autoload 'palette-where-is-color "palette" "\
Move to the palette location of COLOR.
This does not change the current color.

\(fn COLOR &optional CURSOR-COLOR)" t nil)

(autoload 'palette-right "palette" "\
Move right ARG places, wrapping around from the left.
ARG < 0 means move left, wrapping around from the right.

\(fn &optional ARG)" t nil)

(autoload 'palette-left "palette" "\
Move left ARG chars, wrapping around from the right.
ARG < 0 means move right, wrapping around from the left.

\(fn &optional ARG)" t nil)

(autoload 'palette-down "palette" "\
Move down ARG places, wrapping around from the top.
ARG < 0 means move up, wrapping around from the bottom.

\(fn &optional ARG)" t nil)

(autoload 'palette-up "palette" "\
Move up ARG chars, wrapping around from the bottom.
ARG < 0 means move down, wrapping around from the top.

\(fn &optional ARG)" t nil)

(autoload 'palette-right+pick "palette" "\
`palette-right' followed by `palette-pick-background-at-point'.

\(fn &optional ARG)" t nil)

(autoload 'palette-left+pick "palette" "\
`palette-left' followed by `palette-pick-background-at-point'.

\(fn &optional ARG)" t nil)

(autoload 'palette-down+pick "palette" "\
`palette-down' followed by `palette-pick-background-at-point'.

\(fn &optional ARG)" t nil)

(autoload 'palette-up+pick "palette" "\
`palette-up' followed by `palette-pick-background-at-point'.

\(fn &optional ARG)" t nil)

(autoload 'palette-increase-hue "palette" "\
Increase the hue component of the current color by ARG/100.

\(fn &optional ARG)" t nil)

(autoload 'palette-decrease-hue "palette" "\
Decrease the hue component of the current color by ARG/100.

\(fn &optional ARG)" t nil)

(autoload 'palette-increase-saturation "palette" "\
Increase the saturation component of the current color by ARG/100.

\(fn &optional ARG)" t nil)

(autoload 'palette-decrease-saturation "palette" "\
Decrease the saturation component of the current color by ARG/100.

\(fn &optional ARG)" t nil)

(autoload 'palette-increase-value "palette" "\
Increase the value component of the current color by ARG/100.

\(fn &optional ARG)" t nil)

(autoload 'palette-decrease-value "palette" "\
Decrease the value component of the current color by ARG/100.

\(fn &optional ARG)" t nil)

(autoload 'palette-increase-red "palette" "\
Increase the red component of the current color by ARG/100.

\(fn &optional ARG)" t nil)

(autoload 'palette-decrease-red "palette" "\
Decrease the red component of the current color by ARG/100.

\(fn &optional ARG)" t nil)

(autoload 'palette-increase-green "palette" "\
Increase the green component of the current color by ARG/100.

\(fn &optional ARG)" t nil)

(autoload 'palette-decrease-green "palette" "\
Decrease the green component of the current color by ARG/100.

\(fn &optional ARG)" t nil)

(autoload 'palette-increase-blue "palette" "\
Increase the blue component of the current color by ARG/100.

\(fn &optional ARG)" t nil)

(autoload 'palette-decrease-blue "palette" "\
Decrease the blue component of the current color by ARG/100.

\(fn &optional ARG)" t nil)

(defalias 'toggle-palette-verbose 'palette-toggle-verbose)

(autoload 'palette-toggle-verbose "palette" "\
Toggle using frequent color info feedback.
This toggles option `palette-toggle-verbose-flag'.

\(fn)" t nil)

(defalias 'toggle-palette-cursor-color 'palette-toggle-cursor-color)

(autoload 'palette-toggle-cursor-color "palette" "\
Toggle updating the cursor color so the cursor stands out.
This toggles option `palette-update-cursor-color-flag'.

\(fn)" t nil)

(defalias 'colors 'palette)

(autoload 'palette "palette" "\
Display a color-palette frame in Color Palette mode.
This includes these areas:
 - a hue x saturation palette
 - a swatch of the current color
 - a swatch of the original (old) color
 - a brightness scale
COLOR is the color used for both swatches.
If you enter an empty color name, then a color is picked randomly.
See `palette-mode' for more information.

\(fn &optional COLOR)" t nil)

(autoload 'palette-brightness-scale "palette" "\
Display a brightness (value) scale for COLOR.
If a color palette is already displayed, then just update it.

\(fn &optional COLOR)" t nil)

(autoload 'palette-swatch "palette" "\
Display a color swatch for COLOR.
OLDP non-nil means update the original (old) color;
     nil means update the current (new) color.
If a color palette is already displayed, then just update it.

\(fn &optional OLDP COLOR)" t nil)

;;;***
(provide 'palette-epackage-0loaddefs)
