# printify 1.0.1 - DEVELOPMENT

### New functionality

* `set_no_color()`: Suppresses the color codes so that messages can be printed clean. The option is auto controlled on load via the system variable `NO_COLOR` but can also be set individually by this function. Console output in e.g. RStudio vs. output to a logging system should be handled automatically rightnow. (25.04.2026, thanks to @TroyHernandez)
* `set_up_custom_message()`: Waiting symbols as well as the color of the time stamps can now be customized. (25.04.2026)
* `print_step()`: Now has a new `in_place` parameter, which prints the message on the same line as before, instead of in the next line. This can e.g. be used inside loops as follows. (29.04.2026)

```
new_in_place_steps <- function(){
    print_start_message()
    
    print_step("MAJOR", "Let's get started...")
    
    for (i in seq_len(10)){
        print_step("Minor", "This is in place step [i] of 10", i = i, in_place = TRUE)
        Sys.sleep(0.25)
    }
    
    print_step("MAJOR", "Loop has ended")
    
    print_closing()
}


new_in_place_steps()
```

### Changed functionality

* `set_up_custom_message()`: They way custom messages are set up has slightly changed and will break existing code. Custom message types are now stored globally and are called within quotation marks like all the other built-in message types. See updated README for the new handling. (25.04.2026)

### Fixed

* `print_step()`: Waiting character "?" is now drawn as intended in non-utf8 mode. (25.04.2026)

### Additionally

* Message time stamps are now drawn in a lighter grey to enhance visibility on darker themes. (20.04.2026)

# printify 1.0.0

* Initial CRAN submission.
