using Logging

const PLOTS_DEFAULTS = Dict(:theme => :wong2)

const ISDEBUG = Ref(false)
global_logger(ConsoleLogger(stderr,Logging.Info, show_limited = false))
function DEBUG()
    global ISDEBUG
    if ISDEBUG[]
        global_logger(ConsoleLogger(stderr,Logging.Info, show_limited = false))
        ISDEBUG[] = false
        return nothing
    end
    global_logger(ConsoleLogger(stderr,Logging.Debug, show_limited = false))
    ISDEBUG[] = true
    return nothing
end # function
