# attach tmux 
	~tmux attach

# List session
 	~tmux -t attach $session_id
	~tmux ls 

# List session
 	~tmux kill-session

# List session

# Commands
	detach-client:         M-b d
	copy-mode:	       M-b [
	select:		       space (highlight + enter)
	paste-buffer	       M-b ]

# Panel	
	| split-panel -h:     M-b %
	- split-panel:        M-b "
	close panel:	      M-b x
	panel as a new windos: M-b !
	ressize: 	      M-b M-[UP]...
	

# Windows
	add window	       M-b c
	kill window	       M-b &
	switch window	       M-b [0-9] 
			       M-b w  (list)
			       M-b p  (perious)
			       M-b n  (next)
	rename window	       M-b ,
	change windows id      M-b .	

# Create/Kill Session
	tmux new -s myname
	tmux kill-session -t myname
