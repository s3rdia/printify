# printify 1.0.1 - DEVELOPMENT

### New functionality

* `set_no_color()`: Suppresses the color codes so that messages can be printed clean. The option is auto controlled on load via the system variable `NO_COLOR` but can also be set individually by this function. Console output in e.g. RStudio vs. output to a logging system should be handled automatically rightnow. (25.04.2026, thanks to @TroyHernandez)
* `set_up_custom_message()`: Waiting symbols as well as the color of the time stamps can now be customized. (25.04.2026)

### Changed functionality

* `set_up_custom_message()`: They way custom messages are set up has slightly changed and will break existing code. Custom message types are now stored globally and are called within quotation marks like all the other built-in message types. See updated README for the new handling. (25.04.2026)

### Fixed

* `print_step()`: Waiting character "?" is now drawn as intended in non-utf8 mode. (25.04.2026)

### Additionally

* Message time stamps are now drawn in a lighter grey to enhance visibility on darker themes. (20.04.2026)

# printify 1.0.0

* Initial CRAN submission.
