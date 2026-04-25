# Resubmission printify 1.0.1
Last CRAN release was on 21.04.2026.

### New functionality

* `set_no_color()`: Suppresses the color codes so that messages can be printed clean. The option is auto controlled on load via the system variable `NO_COLOR` but can also be set individually by this function. Console output in e.g. RStudio vs. output to a logging system should be handled automatically rightnow. (25.04.2026, thanks to @TroyHernandez)
* `set_up_custom_message()`: Waiting symbols as well as the color of the time stamps can now be customized.

### Changed functionality

* `set_up_custom_message()`: They way custom messages are set up has slightly changed and will break existing code. Custom message types are now stored globally and are called within quotation marks like all the other built-in message types. See updated README for the new handling.

### Fixed

* `print_step()`: Waiting character "?" is now drawn as intended in non-utf8 mode.

### Additionally

* Message time stamps are now drawn in a lighter grey to enhance visibility on darker themes. 


## R CMD check results

0 errors | 0 warnings | 0 note
