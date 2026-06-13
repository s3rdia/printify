# Resubmission printify 1.0.2
Last CRAN release was on 16.05.2026.

### Fixed

* `print_step()`: Doesn't print empty lines anymore, when surrounding the function with `suppressMessages()`.

### Optimization

* `print_step()`, `print_start_message()`, `print_headline()`, `print_closing()`: Execution token is now only retrieved, if the print function is called from a low depth. Meaning deeply nested print statements wont retrieve the token because this becomes very resource heavy.


## R CMD check results

0 errors | 0 warnings | 0 note
