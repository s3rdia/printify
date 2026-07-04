# Resubmission printify 1.0.3
Last CRAN release was on 17.06.2026.

### Fixed

* `print_start_message()`: Now doesn't reset start timer anymore when message is suppressed.

### Optimization

* I underestimated how big in size the call stack can get depending on what functions are called. Therefore the message stack now doesn't receive the full call stack per message anymore but a condensed version and just as a list of character strings.


## R CMD check results

0 errors | 0 warnings | 0 note
