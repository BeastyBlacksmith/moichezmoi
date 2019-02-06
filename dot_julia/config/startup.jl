using Logging
isdebug[] = Ref(false)
global_logger(ConsoleLogger(stderr,Logging.Info, show_limited = false))
function DEBUG()
    if isdebug[]
        global_logger(ConsoleLogger(stderr,Logging.Info, show_limited = false))
        isdebug() = false
        return nothing
    end
    global_logger(ConsoleLogger(stderr,Logging.Debug, show_limited = false))
    isdebug() = true
    return nothing
end # function
