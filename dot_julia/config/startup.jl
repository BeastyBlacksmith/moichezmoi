using Logging
isdebug[] = Ref(false)
function DEBUG()
    if isdebug[]
        global_logger(ConsoleLogger(stderr,Logging.Info))
        isdebug() = false
        return nothing
    end
    global_logger(ConsoleLogger(stderr,Logging.Debug))
    isdebug() = true
    return nothing
end # function
