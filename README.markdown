Description
===========

Examples for the [EventMachine API](http://eventmachine.rubyforge.org/EventMachine.html).

Examples
========

1. EM.run :: Starting the reactor
2. EM.reactor_running? :: Evented libraries often need to check if the reactor is running
3. EM.stop :: Stopping the reactor
4. EM::Iterator and EM.add_timer :: Simple iteration over a list of numbers using a timer
5. EM.defer :: For integrating blocking operations into the EM control flow
6. EM::PeriodicTimer :: For events which have to triggered at periodic intervals
7. EM::Queue :: The recursive procs idiom
8. EM::popen :: Demonstrates a low level API for executing system commands