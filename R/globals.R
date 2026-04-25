# Internal environment to store message styling options
.printify_messages <- new.env(parent = emptyenv())
.printify_messages[["format"]] <- list(utf8                = l10n_info()[["UTF-8"]] && .Platform$GUI != "Rgui",
                                       time_color          = "#6B6B6B",
                                       note_ansi           = hex_to_ansi(" \u2139\ufe0f NOTE: ", hex_color = "#63C2C9", bold = TRUE),
                                       note_pt             = hex_to_ansi(" ~ NOTE: ",            hex_color = "#63C2C9", bold = TRUE),
                                       note_indent_ansi    = hex_to_ansi(" \u2139\ufe0f\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0", hex_color = "#63C2C9", bold = TRUE),
                                       note_indent_pt      = hex_to_ansi(" ~\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0",            hex_color = "#63C2C9", bold = TRUE),
                                       warning_ansi        = hex_to_ansi(" \u26a0\ufe0f WARNING: ", hex_color = "#FFC90E", bold = TRUE),
                                       warning_pt          = hex_to_ansi(" ! WARNING: ",            hex_color = "#FFC90E", bold = TRUE),
                                       warning_indent_ansi = hex_to_ansi(" \u26a0\ufe0f\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0", hex_color = "#FFC90E", bold = TRUE),
                                       warning_indent_pt   = hex_to_ansi(" !\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0",            hex_color = "#FFC90E", bold = TRUE),
                                       error_ansi          = hex_to_ansi(" \u274c ERROR: ", hex_color = "#C93F3F", bold = TRUE),
                                       error_pt            = hex_to_ansi(" X ERROR: ",      hex_color = "#C93F3F", bold = TRUE),
                                       error_indent_ansi   = hex_to_ansi(" \u274c\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0", hex_color = "#C93F3F", bold = TRUE),
                                       error_indent_pt     = hex_to_ansi(" X\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0",      hex_color = "#C93F3F", bold = TRUE),
                                       neutral_ansi        = hex_to_ansi("\u00a0", hex_color = "#63C2C9", bold = TRUE),
                                       neutral_pt          = hex_to_ansi("\u00a0", hex_color = "#63C2C9", bold = TRUE),
                                       neutral_indent_ansi = hex_to_ansi("\u00a0", hex_color = "#63C2C9", bold = TRUE),
                                       neutral_indent_pt   = hex_to_ansi("\u00a0", hex_color = "#63C2C9", bold = TRUE),
                                       grey_ansi           = hex_to_ansi(" \u2601 ",                 hex_color = "#6B6B6B", bold = TRUE),
                                       grey_pt             = hex_to_ansi(" * ",                      hex_color = "#6B6B6B", bold = TRUE),
                                       grey_indent_ansi    = hex_to_ansi("\u00a0\u00a0\u00a0\u00a0", hex_color = "#6B6B6B", bold = TRUE),
                                       grey_indent_pt      = hex_to_ansi("\u00a0\u00a0\u00a0",       hex_color = "#6B6B6B", bold = TRUE),
                                       major_ansi          = hex_to_ansi(" \u23f3\ufe0f ",           hex_color = "#32CD32", bold = TRUE),
                                       major_pt            = hex_to_ansi(" ? ",                      hex_color = "#32CD32", bold = TRUE),
                                       major_indent_ansi   = hex_to_ansi("\u00a0\u00a0\u00a0\u00a0", hex_color = "#32CD32", bold = TRUE),
                                       major_indent_pt     = hex_to_ansi("\u00a0\u00a0\u00a0",       hex_color = "#32CD32", bold = TRUE),
                                       minor_ansi          = hex_to_ansi(" \u00a0\u00a0\u00a0\u23f3\ufe0f ", hex_color = "#32CD32", bold = TRUE),
                                       minor_pt            = hex_to_ansi(" \u00a0\u00a0? ",                  hex_color = "#32CD32", bold = TRUE),
                                       minor_indent_ansi   = hex_to_ansi("\u00a0\u00a0\u00a0\u00a0\u00a0",   hex_color = "#32CD32", bold = TRUE),
                                       minor_indent_pt     = hex_to_ansi("\u00a0\u00a0\u00a0",               hex_color = "#32CD32", bold = TRUE))
.printify_messages[["custom_types"]]   <- list()
.printify_messages[["stack"]]          <- list()
.printify_messages[["start_time"]]     <- NULL
.printify_messages[["timer"]]          <- NULL
.printify_messages[["last_message"]]   <- NULL
.printify_messages[["last_session"]]   <- NULL
.printify_messages[["last_execution"]] <- NULL
.printify_messages[["no_print"]]       <- FALSE
.printify_messages[["no_color"]]       <- nzchar(Sys.getenv("NO_COLOR"))
