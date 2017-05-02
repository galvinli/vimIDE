# Tutor vim
    ~# vimtutor
# Yank a word. 
 yiw


# Mark ( Plugin Signature)i

  mx           Toggle mark 'x' and display it in the leftmost column
  dmx          Remove mark 'x' where x is a-zA-Z

  m,           Place the next available mark
  m.           If no mark on line, place the next available mark. Otherwise, remove (first) existing mark.
  m-           Delete all marks from the current line
  m<Space>     Delete all marks from the current buffer
  ]`           Jump to next mark
  [`           Jump to prev mark
  ]'           Jump to start of next line containing a mark
  ['           Jump to start of prev line containing a mark
  `]           Jump by alphabetical order to next mark
  `[           Jump by alphabetical order to prev mark
  ']           Jump by alphabetical order to start of next line having a mark
  '[           Jump by alphabetical order to start of prev line having a mark
  m/           Open location list and display marks from current buffer

  m[0-9]       Toggle the corresponding marker !@#$%^&*()
  m<S-[0-9]>   Remove all markers of the same type
  ]-           Jump to next line having a marker of the same type
  [-           Jump to prev line having a marker of the same type
  ]=           Jump to next line having a marker of any type
  [=           Jump to prev line having a marker of any type
  m?           Open location list and display markers from current buffer

# Vim provides many ways to move the cursor. Becoming familiar with them leads to more effective text editing. 
 h   move one character left
 j   move one row down
 k   move one row up
 l   move one character right
 w   move to beginning of next word
 b   move to previous beginning of word
 e   move to end of word
 W   move to beginning of next word after a whitespace
 B   move to beginning of previous word before a whitespace
 E   move to end of word before a whitespace

# Repart last change.
  The "." command made last change mode in Normal mode.

  yiw for yank a word. "ciw<C-R> 0 <ESC>" to replace a word  

  # Delete ,["x] mean into  register x

 ["x]x         Delete [count] characters under and after the curosr.

 ["x]X         Delete [count] characters before the 

 ["x]d{motion} Delete text that {motion} move over.

 ["x]D        Delete the characters under the curosr until the end of the lines. 

 
 # Search and Relpace
   - Search all line
     :1,$s/${thing search}/${thing_replace}/gc
   - Search line 1 to 30
     :1,30s/${thing_search}/${thing_replace}/gc 

   - Search each line of beginning and replace
     :1,$s/^/${something u wanna add}/gc

   - Search each line of end and replace  
     :1,$s/$/${something u wanna add}/gc

 # motion.txt 

 # Home, Middle, Last
			+---------------------------+
		H -->	| text sample text	    |
			| sample text		    |
			| text sample text	    |
			| sample text		    |
		M -->	| text sample text	    |
			| sample text		    |
			| text sample text	    |
			| sample text		    |
		L -->	| text sample text	    |
			+---------------------------+

reading vim help at usr_05.txt 
