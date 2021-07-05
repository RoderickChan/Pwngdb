source ~/pwndbg/pwndbg.py
source ~/Pwngdb/pwngdb.py
source ~/Pwngdb/angelheap/gdbinit.py

define hook-run
python
import angelheap
angelheap.init_angelheap()
end
end

# telescop don't skip repeating value
set telescope-skip-repeating-val off

# ignore the alarm signal
handle SIGALRM nostop

# debug parent and child process
set detach-on-fork off